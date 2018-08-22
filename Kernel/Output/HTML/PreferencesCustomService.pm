# --
# Copyright (C) 2001-2018 OTRS AG, https://otrs.com/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see https://www.gnu.org/licenses/gpl-3.0.txt.
# --

package Kernel::Output::HTML::PreferencesCustomService;

use strict;
use warnings;

our @ObjectDependencies = (
    'Kernel::Config',
    'Kernel::Output::HTML::Layout',
    'Kernel::System::Cache',
    'Kernel::System::DB',
    'Kernel::System::Service',
    'Kernel::System::Web::Request',
);

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {%Param};
    bless( $Self, $Type );

    for my $Needed (qw(UserID ConfigItem)) {
        die "Got no $Needed!" if ( !$Self->{$Needed} );
    }

    return $Self;
}

sub Param {
    my ( $Self, %Param ) = @_;

    my @Params;
    my @CustomServiceIDs;

    # check needed param,
    # if no user id is given or Ticket::Service is disabled
    # do not show this box
    if (
        !$Param{UserData}->{UserID}
        || !$Kernel::OM->Get('Kernel::Config')->Get('Ticket::Service')
        )
    {
        return ();
    }

    # get all services
    my %ServiceList = $Kernel::OM->Get('Kernel::System::Service')->ServiceList(
        KeepChildren => $Kernel::OM->Get('Kernel::Config')->Get('Ticket::Service::KeepChildren'),
        Valid        => 1,
        UserID       => $Self->{UserID},
    );

    if ( $Kernel::OM->Get('Kernel::System::Web::Request')->GetArray( Param => 'ServiceID' ) ) {
        @CustomServiceIDs = $Kernel::OM->Get('Kernel::System::Web::Request')->GetArray( Param => 'ServiceID' );
    }
    elsif ( $Param{UserData}->{UserID} && !defined $CustomServiceIDs[0] ) {
        @CustomServiceIDs = $Kernel::OM->Get('Kernel::System::Service')->GetAllCustomServices(
            UserID => $Param{UserData}->{UserID}
        );
    }
    push(
        @Params,
        {
            %Param,
            Option => $Kernel::OM->Get('Kernel::Output::HTML::Layout')->BuildSelection(
                Data        => \%ServiceList,
                Name        => 'ServiceID',
                Multiple    => 1,
                Size        => 10,
                SelectedID  => \@CustomServiceIDs,
                Sort        => 'AlphanumericValue',
                Translation => 0,
                TreeView    => 1,

            ),
            Name => 'ServiceID',
        },
    );
    return @Params;
}

sub Run {
    my ( $Self, %Param ) = @_;

    my $DBObject = $Kernel::OM->Get('Kernel::System::DB');

    # delete old custom services
    $DBObject->Do(
        SQL => "
            DELETE FROM personal_services
            WHERE user_id = ?",
        Bind => [ \$Param{UserData}->{UserID} ],
    );

    # add new custom services
    for my $ServiceID ( @{ $Param{GetParam}->{ServiceID} } ) {
        $DBObject->Do(
            SQL => "
                INSERT INTO personal_services (service_id, user_id)
                VALUES (?, ?)",
            Bind => [ \$ServiceID, \$Param{UserData}->{UserID} ]
        );
    }

    my $CacheKey = 'GetAllCustomServices::' . $Param{UserData}->{UserID};
    $Kernel::OM->Get('Kernel::System::Cache')->Delete(
        Type => 'Service',
        Key  => $CacheKey,
    );

    $Self->{Message} = 'Preferences updated successfully!';
    return 1;
}

sub Error {
    my ( $Self, %Param ) = @_;

    return $Self->{Error} || '';
}

sub Message {
    my ( $Self, %Param ) = @_;

    return $Self->{Message} || '';
}

1;
