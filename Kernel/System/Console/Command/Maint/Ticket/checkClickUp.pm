# --
# Copyright (C) 2001-2020 OTRS AG, https://otrs.com/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see https://www.gnu.org/licenses/gpl-3.0.txt.
# --

package Kernel::System::Console::Command::Maint::Ticket::checkClickUp;

use strict;
use warnings;
use JSON::XS;
use REST::Client;
use utf8;
use Encode ;
use Time::HiRes qw(gettimeofday);
use POSIX qw(strftime);
use Data::Dumper;

use parent qw(Kernel::System::Console::BaseCommand);

our @ObjectDependencies = (
    'Kernel::Config',
    'Kernel::System::DB',
    'Kernel::System::Ticket',
    'Kernel::System::Ticket::Article',
    'Kernel::System::ObjectManager',
    'Kernel::System::Email',
);

our %config = () ;
our $SessionTmpFile = "/tmp/ClickupOTRS.session" ;
our $CLICKUP_client = () ;
our $DynamicField_CLICKUPARTICLEID = "" ;
our $MissingSubject = "Missing OTRS ticket for ClickUp space:" ;

sub initClickup {
    my ( $Self, %Param ) = @_;

    my $CLICKUP_client = REST::Client->new(
              host => $config{'clickup_url'},
              timeout => 10
       );

    $CLICKUP_client->addHeader('Authorization', $config{'clickup_token'} );
    
    return $CLICKUP_client ;    
    
}

sub getClickupSpaces {
    my ( $Self, $CLICKUP ) = @_;
 
    my $SessionRequestData = {
    };

    $SessionRequestData = encode_json ($SessionRequestData);
    my $SessionRequestEndPoint = "/team/" . $config{'clickup_team_id'} . "/space";
    $CLICKUP->request('GET', $SessionRequestEndPoint , $SessionRequestData ) ;

    my $response = decode_json ( $CLICKUP->responseContent()) ;

    if ( $response->{'err'} ) {
       print "Error " . $response->{'ECODE'} . ": " . $response->{'err'} . "\n" ;
    } else {
       return $response ;
    }
 
}

sub checkForSpaceTicket {
    my ( $Self, $space ) = @_;

    my $TicketObject = $Kernel::OM->Get('Kernel::System::Ticket');

    # Find all tickets which will escalate within the next five days.
    my @Tickets = $TicketObject->TicketSearch(
        Result                           => 'ARRAY',
        Limit                            => 1000,
        Permission                       => 'rw',
        UserID                           => 1,
        DynamicField_CLICKUPID => {
            'Equals' => $space->{'id'},
        }
    );

    if ( @Tickets ) {
       return 1 ;
    }

    @Tickets = $TicketObject->TicketSearch(
        Result		=> 'ARRAY',
        Limit		=> 1000,
        Permission	=> 'rw',
        UserID		=> 1,
        Subject		=> $MissingSubject . $space->{'id'} ,
        ArchiveFlags	=> ['y', 'n'],
    );

    if ( @Tickets ) {
       return 1 ;
    }

    return 0 ;

}

sub createMissingTicket {
     my ( $Self, $space ) = @_;

     my $EmailObject = $Kernel::OM->Get('Kernel::System::Email');     
     my $Sent = $EmailObject ->Send (
        From => 'helpdesk@agenda.si',
        To   => 'programerji@agenda.si',
        Subject => $MissingSubject . $space->{'id'} ,
        Charset => 'utf-8',
        MimeType => 'text/plain', # "text/plain" or "text/html"
        Body => $space->{'name'},
     ) ;

     if ( $Sent ) {
        print "Email sent!\n";
     }
}

sub Configure {
    my ( $Self, %Param ) = @_;

    $Self->Description('Synchronise Articles with ClickUp service.');
    $Self->AddOption(
        Name        => 'micro-sleep',
        Description => "Specify microseconds to sleep after every ticket to reduce system load (e.g. 1000).",
        Required    => 0,
        HasValue    => 1,
        ValueRegex  => qr/^\d+$/smx,
    );

    my $ConfigObject = $Kernel::OM->Get('Kernel::Config');
    
    $config{'clickup_url'} = $ConfigObject->Get('Clickup::API_URL');
    $config{'clickup_token'} = $ConfigObject->Get('Clickup::Token');
    $config{'clickup_team_id'} = $ConfigObject->Get('Clickup::TeamID');

    # $Self->AddOption(
    #     Name        => 'option',
    #     Description => "Describe this option.",
    #     Required    => 1,
    #     HasValue    => 1,
    #     ValueRegex  => qr/.*/smx,
    # );
    # $Self->AddArgument(
    #     Name        => 'argument',
    #     Description => "Describe this argument.",
    #     Required    => 1,
    #     ValueRegex  => qr/.*/smx,
    # );

    return;
}


sub PreRun {
#     my ( $Self, %Param ) = @_;
#
#     # Perform any custom validations here. Command execution can be stopped with die().
#
#     # my $TargetDirectory = $Self->GetOption('target-directory');
#     # if ($TargetDirectory && !-d $TargetDirectory) {
#     #     die "Directory $TargetDirectory does not exist.\n";
#     # }
#
#     return;
}


sub Run {
    my ( $Self, %Param ) = @_;

    $Self->Print("<yellow>Synchronizying with checkClickUp ...</yellow>\n");

    my $CLICKUP=$Self->initClickup () ;

    # At the end let's check if there are some ClickUP spaces without OTRS ticket
    my $spaces = $Self->getClickupSpaces( $CLICKUP )->{'spaces'};

    my %spaces = () ;
    foreach my $space ( @$spaces ) {
       $spaces{$space->{'id'}} = $space->{'name'} ;
       if ( ! $Self->checkForSpaceTicket($space) ) {
           $Self->createMissingTicket ( $space ) ;
       }
    }

    $Self->Print("<green>Done.</green>\n");
    return $Self->ExitCodeOk();
}

 sub PostRun {
     my ( $Self, %Param ) = @_;
#
#     # This will be called after Run() (even in case of exceptions). Perform any cleanups here.
#
     return;
 }

1;
