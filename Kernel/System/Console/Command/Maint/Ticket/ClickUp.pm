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
our $DynamicField_Zahtevnost = "";
our $DefaultZahtevnost = "ST04-03";
our $MissingSubject = "Missing OTRS ticket for ClickUp space:" ;



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
    $CLICKUP->request('GET', $SessionRequestEndPoint ) ;

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
#       print Dumper (\%OTRSUserData) ;
       my $email = lc $OTRSUserData{'UserEmail'} ;
       $UsersByEmail{$email}{'UserID'} = $UserID ;
       $UsersByEmail{$email}{'email'} = $OTRSUserData{'UserEmail'} ;
       $UsersByEmail{$email}{'UserLogin'} = $OTRSUserData{'UserLogin'} ; 
    }
     
    my $TeamMembers = $Self->getClickupTeams($CLICKUP)->{'teams'}->[0]->{'members'} ; 
    my %MatchedUsers = () ;
    for my $Member ( @$TeamMembers ) {
       my $email = lc $Member->{'user'}{'email'} ;
       $MatchedUsers{$Member->{'user'}{'id'}}{'Email'} = defined $UsersByEmail{$email}{'email'} ? $UsersByEmail{$email}{'email'} : $Member->{'user'}{'email'} ;
       $MatchedUsers{$Member->{'user'}{'id'}}{'UserID'} = defined $UsersByEmail{$email}{'UserID'} ? $UsersByEmail{$email}{'UserID'} : 1 ;
       $MatchedUsers{$Member->{'user'}{'id'}}{'UserLogin'} = defined $UsersByEmail{$email}{'UserLogin'} ? $UsersByEmail{$email}{'UserLogin'} : $Member->{'user'}{'email'} ;
#       $MatchedUsers{$Member->{'user'}{'id'}}{'id'} = $Member->{'user'}{'id'} ;
    }
     
    return \%MatchedUsers ;
     
}

sub getClickupTimeEntires {
    my ( $Self, $CLICKUP, $ClickupSpaceID, $assignee ) = @_;

    my $SessionRequestData = {
    };

    $SessionRequestData = encode_json ($SessionRequestData);
    my $SessionRequestEndPoint = "/team/" . $config{'clickup_team_id'} . "/time_entries?space_id=" . $ClickupSpaceID . "&assignee=" . $assignee  . "&start_date=0" ; 

    $CLICKUP->request('GET', $SessionRequestEndPoint ) ;       
    
    my $response = decode_json ( $CLICKUP->responseContent()) ;

    if ( $response->{'err'} ) {
        print "Error " . $response->{'ECODE'} . ": " . $response->{'err'} . "\n" ;
    } else {
        return $response ;
    } 
}

sub ClickupConsolidate {
    my ( $Self, $ClickupSpaceID , $TicketID, %ArticlesHash ) = @_ ;

    my $CLICKUP=$Self->initClickup () ;
    my $MatchedUsers = $Self->getClickupMatchedUsers ( $CLICKUP, $ClickupSpaceID );

    my $all_users = "";
    foreach my $user ( keys %$MatchedUsers ) {
       $all_users .= $user . ","; 
    }
    $all_users =~ s/,$//g ;

    # First check Clickup entries
    my $TimeEntries = $Self->getClickupTimeEntires ( $CLICKUP , $ClickupSpaceID, $all_users )->{'data'} ;    
    my %TimeEntriesHash = () ;
    for my $TimeEntry ( @$TimeEntries ) {
#        print $TimeEntry->{'id'} . "\n";
        $TimeEntriesHash{$TimeEntry->{'id'}} = 1 ;
        $TimeEntry->{'AccountedTime'} = int ( $TimeEntry->{'duration'} / 1000 / 60 ) ;
        if ( defined $ArticlesHash{$TimeEntry->{'id'}} ) {
           if ( $ArticlesHash{$TimeEntry->{'id'}}{'AccountedTime'} && ($ArticlesHash{$TimeEntry->{'id'}}{'AccountedTime'} == $TimeEntry->{'AccountedTime'}) ) {
              next ;
           }
#           print "Update time entry for: "  . $TimeEntry->{'id'}  . "in Article: " . $ArticlesHash{$TimeEntry->{'id'}}{'ArticleID'} . "\n" ;
           $Self->updateArticleTime ( $TicketID, $ArticlesHash{$TimeEntry->{'id'}}{'ArticleID'}, $MatchedUsers, $TimeEntry ) ;
        } else {
#           print "Create Article for: " . $TimeEntry->{'id'} . "\n" ;
           $ArticlesHash{$TimeEntry->{'id'}}{'ArticleID'} = $Self->createArticle($TicketID, $MatchedUsers, $TimeEntry);
        }
        $Self->updateArticleCreateTime ($ArticlesHash{$TimeEntry->{'id'}}{'ArticleID'}, $TimeEntry ) ;
    }

    # Then remove all Articles/Entires deleted from Clickup
    for my $Article ( keys %ArticlesHash ) {
        if ( ! defined $TimeEntriesHash{$Article} ) {
           print "Za brisanje: $Article\n" ;
           $Self->deleteArticle($ArticlesHash{$Article}{'ArticleID'});
        }
    }
}

sub updateArticleCreateTime {
    my ( $Self, $ArticleID , $TimeEntry ) = @_;

    my $incoming_time = $TimeEntry->{'end'}/1000;
    my $create_time = POSIX::strftime( '%Y-%m-%d %H:%M:%S' , localtime($incoming_time));
    my $DBObject = $Kernel::OM->Get('Kernel::System::DB');

#    print "$ArticleID :: $incoming_time :: $create_time \n" ;

    $DBObject->Do(
        SQL => 'UPDATE article SET incoming_time = ?, create_time = ?, change_time = ? WHERE id = ?',
        Bind => [ \$incoming_time , \$create_time, \$create_time, \$ArticleID ],
    );
    
    $DBObject->Do(
        SQL => 'UPDATE time_accounting SET create_time = ?, change_time = ? WHERE article_id = ?',
        Bind => [ \$create_time, \$create_time , \$ArticleID ],
    );    
}

sub deleteArticle {
    my ( $Self, $ArticleID ) = @_;
    my $TicketObject = $Kernel::OM->Get('Kernel::System::Ticket');

    $TicketObject->ArticleDelete(
        ArticleID => $ArticleID,
        UserID    => 1,
    );

}

sub createArticle {
    my ( $Self, $TicketID, $MatchedUsers, $TimeEntry ) = @_;

    my $TicketObject = $Kernel::OM->Get('Kernel::System::Ticket');

#    print ( $MatchedUsers->{$TimeEntry->{'user'}{'id'}}{'Email'} . "\n")  ;
#    print ( $MatchedUsers->{$TimeEntry->{'user'}{'id'}}{'UserLogin'} . "\n" ) ;

    my $ArticleID = $TicketObject->ArticleCreate(
       TicketID         => $TicketID,
       ArticleType      => 'note-internal',
       SenderType       => 'agent',
       From             => $MatchedUsers->{$TimeEntry->{'user'}{'id'}}{'Email'},
       UserID           => $MatchedUsers->{$TimeEntry->{'user'}{'id'}}{'UserID'},
       Subject		=> $TimeEntry->{'task'}{'name'},
       Body		=> $TimeEntry->{'task_url'} . " :: " . $TimeEntry->{'AccountedTime'},
       HistoryType	=> 'AddNote',
       HistoryComment	=> $TimeEntry->{'task'}{'name'},
       Charset		=> 'UTF-8',
       MimeType         => 'text/plain',
       IncomingTime	=> $TimeEntry->{'end'}/1000,
     ) ;

# Dodamo še accounted time
    my $Success = $TicketObject->TicketAccountTime(
        TicketID  => $TicketID,
        ArticleID => $ArticleID,
        TimeUnit  => $TimeEntry->{'AccountedTime'},
        UserID    => $MatchedUsers->{$TimeEntry->{'user'}{'id'}}{'UserID'},
    );

#    Dodamo še DynamicField_CLICKUPARTICLEID
     local $Kernel::OM = Kernel::System::ObjectManager->new();
     my $DynamicFieldValueObject = $Kernel::OM->Get('Kernel::System::DynamicFieldValue');

     $DynamicFieldValueObject->ValueSet (
        FieldID  => $DynamicField_CLICKUPARTICLEID,
        ObjectID => $ArticleID,
        Value    => [
            {
                ValueText          => $TimeEntry->{'id'},            # optional, one of these fields must be provided
            },
        ],
        UserID   => $MatchedUsers->{$TimeEntry->{'user'}{'id'}}{'UserID'},
    );

#    Dodamo še DynamicField_Zahtevnost
     local $Kernel::OM = Kernel::System::ObjectManager->new();
     $DynamicFieldValueObject = $Kernel::OM->Get('Kernel::System::DynamicFieldValue');

     $DynamicFieldValueObject->ValueSet (
        FieldID  => $DynamicField_Zahtevnost,
        ObjectID => $ArticleID,
        Value    => [
            {
                ValueText          => $DefaultZahtevnost,
            },
        ],
        UserID   => $MatchedUsers->{$TimeEntry->{'user'}{'id'}}{'UserID'},
    );

    return $ArticleID ;
}

sub updateArticleTime {
    my ( $Self, $TicketID, $ArticleID, $MatchedUsers, $TimeEntry ) = @_;
    my $TicketObject = $Kernel::OM->Get('Kernel::System::Ticket');


    my $Success = $TicketObject->ArticleAccountedTimeDelete(
           ArticleID => $ArticleID,
    );

# Dodamo nov čas
    if ( $TimeEntry->{'AccountedTime'} ) {
       $Success = $TicketObject->TicketAccountTime(
          TicketID  => $TicketID,
          ArticleID => $ArticleID,
          TimeUnit  => $TimeEntry->{'AccountedTime'} ,
          UserID    => $MatchedUsers->{$TimeEntry->{'user'}{'id'}}{'UserID'},
       );
    }
}


sub Run {
    my ( $Self, %Param ) = @_;

    $Self->Print("<yellow>Synchronizying with ClickUp ...</yellow>\n");

    my $TicketObject = $Kernel::OM->Get('Kernel::System::Ticket');

    
    use Kernel::System::ObjectManager;
    local $Kernel::OM = Kernel::System::ObjectManager->new();
    my $DynamicFieldObject = $Kernel::OM->Get('Kernel::System::DynamicField');

    $DynamicField_CLICKUPARTICLEID = $DynamicFieldObject->DynamicFieldGet (Name => 'CLICKUPARTICLEID')->{'ID'};
    $DynamicField_Zahtevnost = $DynamicFieldObject->DynamicFieldGet (Name => 'Zahtevnost')->{'ID'};    

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
        my @Articles = $TicketObject->ArticleGet( 
           TicketID => $TicketID ,
           DynamicFields => 1,
           SenderType => 'agent',
        );

        for my $Article (@Articles) {
             my %ArticleHash = %{$Article} ; 

             $ArticleHash{'AccountedTime'} = $TicketObject->ArticleAccountedTimeGet (
                     ArticleID => $Article->{'ArticleID'},
             ) ;
                          
             # Interested only in Articles with ClickupArticleID set
             if ( $ArticleHash{'DynamicField_CLICKUPARTICLEID'} ) {
                 $ArticlesHash{$ArticleHash{'DynamicField_CLICKUPARTICLEID'}} = \%ArticleHash ;
             } 
        }
        
        $Self->ClickupConsolidate ( $Ticket{'DynamicField_CLICKUPID'} , $TicketID , %ArticlesHash ) ; 

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
