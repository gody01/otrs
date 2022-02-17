# --
# Copyright (C) 2001-2020 OTRS AG, https://otrs.com/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see https://www.gnu.org/licenses/gpl-3.0.txt.
# --

package Kernel::System::Console::Command::Maint::Ticket::ClickUp;

use strict;
use warnings;
use JSON::XS;
use REST::Client;
use utf8;
use Encode ;
use Time::HiRes qw(gettimeofday);

use Data::Dumper;

use parent qw(Kernel::System::Console::BaseCommand);

our @ObjectDependencies = (
    'Kernel::Config',
    'Kernel::System::DB',
    'Kernel::System::Ticket',
    'Kernel::System::Ticket::Article',
);

our %config = () ;
our $SessionTmpFile = "/tmp/ClickupOTRS.session" ;
our $CLICKUP_client = () ;


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

sub initClickup {
    my ( $Self, %Param ) = @_;

    my $CLICKUP_client = REST::Client->new(
              host => $config{'clickup_url'},
              timeout => 10
       );

    $CLICKUP_client->addHeader('Authorization', $config{'clickup_token'} );
    
    return $CLICKUP_client ;    
    
}

sub getClickupTeams {
    my ( $Self, $CLICKUP ) = @_;
   
    my $SessionRequestData = {
    };

    $SessionRequestData = encode_json ($SessionRequestData);
    my $SessionRequestEndPoint = "/team/" ;
    $CLICKUP->request('GET', $SessionRequestEndPoint , $SessionRequestData ) ;

    my $response = decode_json ( $CLICKUP->responseContent()) ;

    if ( $response->{'err'} ) {
        print "Error " . $response->{'ECODE'} . ": " . $response->{'err'} . "\n" ;
    } else {
        return $response ;
    }    
    
}

sub getClickupMatchedUsers {
    my ( $Self, $CLICKUP , $ClickupSpaceID ) = @_;
     
    my $UserObject = $Kernel::OM->Get('Kernel::System::User');
    my %OTRSUSers = $UserObject->UserList ();
    my %UsersByEmail = () ;
    foreach my $UserID ( keys %OTRSUSers ) {
       my %OTRSUserData = $UserObject->GetUserData (
             UserID => $UserID,
       ) ;
       my $email = lc $OTRSUserData{'UserEmail'} ;
       $UsersByEmail{$email}{'UserID'} = $UserID ;
       $UsersByEmail{$email}{'email'} = $OTRSUserData{'UserEmail'} ;
    }     
     
    my $TeamMembers = $Self->getClickupTeams($CLICKUP)->{'teams'}->[0]->{'members'} ; 
    my %MatchedUsers = () ;
    for my $Member ( @$TeamMembers ) {
       my $email = lc $Member->{'user'}{'email'} ;
       $MatchedUsers{$Member->{'user'}{'id'}}{'Email'} = defined $UsersByEmail{$email}{'email'} ? $UsersByEmail{$email}{'email'} : $Member->{'user'}{'email'} ;
       $MatchedUsers{$Member->{'user'}{'id'}}{'UserID'} = defined $UsersByEmail{$email}{'UserID'} ? $UsersByEmail{$email}{'UserID'} : 1 ;
#       $MatchedUsers{$Member->{'user'}{'id'}}{'id'} = $Member->{'user'}{'id'} ;
    }
     
    return \%MatchedUsers ;
     
}

sub getClickupTimeEntires {
    my ( $Self, $CLICKUP, $ClickupSpaceID ) = @_;

    my $MatchedUsers = $Self->getClickupMatchedUsers ( $CLICKUP, $ClickupSpaceID );

    my $SessionRequestData = {
    };

    $SessionRequestData = encode_json ($SessionRequestData);
    
    
       
 
}

sub ClickupConsolidate {
    my ( $Self, $ClickupSpaceID , %ArticlesHash ) = @_ ;

    my $CLICKUP=$Self->initClickup () ;

    #my %TimeEntries =
     $Self->getClickupTimeEntires ( $CLICKUP , $ClickupSpaceID ) ;
    
}

sub Run {
    my ( $Self, %Param ) = @_;

    $Self->Print("<yellow>Synchronizying with ClickUp ...</yellow>\n");

    my $TicketObject = $Kernel::OM->Get('Kernel::System::Ticket');

    # Find all tickets which will escalate within the next five days.
    my @Tickets = $TicketObject->TicketSearch(
        Result                           => 'ARRAY',
        Limit                            => 1000,
        Permission                       => 'rw',
        UserID                           => 1,
        StateType 			 => 'Open',
        DynamicField_CLICKUPID => {
            'GreaterThanEquals' => '0',
        }
    );

    for my $TicketID (@Tickets) {
        # get ticket data
        my %Ticket = $TicketObject->TicketGet(
            TicketID      => $TicketID,
            DynamicFields => 1,
        );
        
        my %ArticlesHash = () ;
        my @Articles = $TicketObject->ArticleIndex( TicketID => $TicketID );
        for my $Article (@Articles) {
             my %ArticleHash = $TicketObject->ArticleGet (
                     ArticleID => $Article,
                     DynamicFields => 1,
             ); 
             $ArticleHash{'AccountedTime'} = $TicketObject->ArticleAccountedTimeGet (
                     ArticleID => $Article,
             ) ;
             
             # Interested only in Articles with ClickupArticleID set
             if ( $ArticleHash{'DynamicField_CLICKUPARTICLEID'} ) {
                 $ArticlesHash{$ArticleHash{'DynamicField_CLICKUPARTICLEID'}} = \%ArticleHash ;
             } 
        }
        
        $Self->ClickupConsolidate ( $Ticket{'DynamicField_CLICKUPID'} , %ArticlesHash ) ; 

    }



    # return $Self->ExitCodeError();

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
