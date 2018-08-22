# --
# Copyright (C) 2001-2018 OTRS AG, https://otrs.com/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see https://www.gnu.org/licenses/gpl-3.0.txt.
# --

package Kernel::GenericInterface::Event::Handler;

use strict;
use warnings;

use Kernel::System::VariableCheck qw(IsHashRefWithData);

our @ObjectDependencies = (
    'Kernel::GenericInterface::Requester',
    'Kernel::System::Scheduler',
    'Kernel::System::GenericInterface::Webservice',
    'Kernel::System::Log',
);

=head1 NAME

Kernel::GenericInterface::Event::Handler - GenericInterface event handler

=head1 SYNOPSIS

This event handler intercepts all system events and fires connected GenericInterface
invokers.

=cut

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

    return $Self;
}

sub Run {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for (qw(Data Event Config)) {
        if ( !$Param{$_} ) {
            $Kernel::OM->Get('Kernel::System::Log')->Log(
                Priority => 'error',
                Message  => "Need $_!"
            );
            return;
        }
    }

    # get webservice objects
    my $WebserviceObject = $Kernel::OM->Get('Kernel::System::GenericInterface::Webservice');

    my %WebserviceList = %{
        $WebserviceObject->WebserviceList(
            Valid => 1,
        ),
    };

    # loop over webservices
    WEBSERVICE:
    for my $WebserviceID ( sort keys %WebserviceList ) {

        my $WebserviceData = $WebserviceObject->WebserviceGet(
            ID => $WebserviceID,
        );

        next WEBSERVICE if !IsHashRefWithData( $WebserviceData->{Config} );
        next WEBSERVICE if !IsHashRefWithData( $WebserviceData->{Config}->{Requester} );
        next WEBSERVICE if !IsHashRefWithData( $WebserviceData->{Config}->{Requester}->{Invoker} );

        # check invokers of the webservice, to see if some might be connected to this event
        INVOKER:
        for my $Invoker ( sort keys %{ $WebserviceData->{Config}->{Requester}->{Invoker} } ) {

            my $InvokerConfig = $WebserviceData->{Config}->{Requester}->{Invoker}->{$Invoker};

            next INVOKER if ref $InvokerConfig->{Events} ne 'ARRAY';

            EVENT:
            for my $Event ( @{ $InvokerConfig->{Events} } ) {

                next EVENT if ref $Event ne 'HASH';

                # check if the invoker is connected to this event
                if ( $Event->{Event} eq $Param{Event} ) {

                    # create a scheduler task for later execution
                    if ( $Event->{Asynchronous} ) {

                        my $TaskID = $Kernel::OM->Get('Kernel::System::Scheduler')->TaskRegister(
                            Type => 'GenericInterface',
                            Data => {
                                WebserviceID => $WebserviceID,
                                Invoker      => $Invoker,
                                Data         => $Param{Data},
                            },
                        );

                    }
                    else {    # or execute Event directly

                        $Kernel::OM->Get('Kernel::GenericInterface::Requester')->Run(
                            WebserviceID => $WebserviceID,
                            Invoker      => $Invoker,
                            Data         => $Param{Data},
                        );
                    }
                }
            }
        }
    }

    return 1;
}

1;

=head1 TERMS AND CONDITIONS

This software is part of the OTRS project (L<https://otrs.org/>).

This software comes with ABSOLUTELY NO WARRANTY. For details, see
the enclosed file COPYING for license information (GPL). If you
did not receive this file, see L<https://www.gnu.org/licenses/gpl-3.0.txt>.

=cut
