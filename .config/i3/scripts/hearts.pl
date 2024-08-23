#!/usr/bin/perl
#
# Copyright 2014 Pierre Mavro <deimos@deimos.fr>
# Copyright 2014 Vivien Didelot <vivien@didelot.org>
#
# Licensed under the terms of the GNU GPL v3, or any later version.
#
# This script is meant to use with i3blocks. It parses the output of the "acpi"
# command (often provided by a package of the same name) to read the status of
# the battery, and eventually its remaining time (to full charge or discharge).
# Urgency (exit code 33) is set if there is less that 5% remaining.
#

use strict;
use warnings;
use utf8;

my $acpi;
my $color;
my $status;
my $percent;
my $full_text;

# read the first line of the "acpi" command output
open (ACPI, 'acpi -b |') or die;
$acpi = <ACPI>;
close(ACPI);

# fail on unexpected output
if ($acpi !~ /: (\w+), (\d+)%/) {
	die "$acpi\n";
}

$status = $1;
$percent = $2;

if ($status eq 'Discharging') {
    $full_text .= "$percent% ";
    $color = "#C2454E";
}
else {
       $full_text = "  ";
       $color ="#80c33e";
}

#Hearts
if ($percent < 20) {
    $full_text .= "    ";
} elsif ($percent < 40) {
         $full_text .= "    ";
} elsif ($percent < 60) {
         $full_text .= "    ";
} elsif ($percent < 80) {
         $full_text .= "    ";
} elsif ($percent <= 100) {
         $full_text .= "    ";
}

#if ($percent < 5) {
#    exit(33);
#}

# print text
print "$full_text \n";

# print colors
print "$full_text\n";
print "$color\n";

exit(0);
