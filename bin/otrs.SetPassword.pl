#!/usr/bin/perl
# --
# Copyright (C) 2001-2018 OTRS AG, https://otrs.com/
# --
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see https://www.gnu.org/licenses/gpl-3.0.txt.
# --

use strict;
use warnings;

use File::Basename;
use FindBin qw($RealBin);
use lib dirname($RealBin);
use lib dirname($RealBin) . '/Kernel/cpan-lib';
use lib dirname($RealBin) . '/Custom';

use Getopt::Long;

use Kernel::System::ObjectManager;

# create object manager
local $Kernel::OM = Kernel::System::ObjectManager->new(
    'Kernel::System::Log' => {
        LogPrefix => 'OTRS-otrs.SetPassword.pl',
    },
);
my $AccountObject;

my %Options;
GetOptions(
    \%Options,
    'agent',
    'customer',
    'h',
);

my $Login = shift;
my $Pw    = shift;

if ( $Options{h} || !$Login ) {
    Usage();
}

my $Type = $Options{customer} ? 'customer' : 'user';
my %AccountList;

# define which object we need to operate on, default to UserObject
# search if login exists
if ( $Type eq 'customer' ) {
    $AccountObject = $Kernel::OM->Get('Kernel::System::CustomerUser');
    %AccountList   = $AccountObject->CustomerSearch(
        UserLogin => $Login,
    );
}
else {
    $AccountObject = $Kernel::OM->Get('Kernel::System::User');
    %AccountList   = $AccountObject->UserSearch(
        UserLogin => $Login,
    );
}

# exit if no login matches
if ( !scalar %AccountList ) {
    print "No $Type found with login '$Login'!\n";
    exit 1;
}

# if no password has been provided, generate one
if ( !$Pw ) {
    $Pw = $AccountObject->GenerateRandomPassword( Size => 12 );
    print "Generated password '$Pw'\n";
}

my $Result = $AccountObject->SetPassword(
    UserLogin => $Login,
    PW        => $Pw,
);

if ( !$Result ) {
    print "Failed to set password!\n";
    exit 1;
}

print "Set password for $Type '$Login'.\n";
print "Done.\n";
exit 0;

sub Usage {

    print "\n";
    print "$0 - set a new password\n";
    print "Copyright (C) 2001-2018 OTRS AG, https://otrs.com/\n";
    print "Usage: otrs.SetPassword [--customer | --agent] user [password]\n";
    print "\n";
    print "\tIf you do not specify --customer, --agent is assumed.\n";
    print "\tIf you do not specify a password, the script will generate one.\n\n";
    exit 1;
}
