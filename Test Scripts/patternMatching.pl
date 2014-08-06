#!/usr/bin/perl
# Simple Pattern Match exercises
use warnings;
use strict;

my $string = 'abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz';
$string =~ /g(.*)o/;
print "$1\n";

$string = 'Helena, Montana';
$string =~ /^(.*), (.*)o.*$/;
print "${2}T: $1\n";
print "$2T: $1\n";

$string =~ /^(.*), (.*)o/;
print "${2}T: $1\n";
print "$2T: $1\n";

$string = 'Beverlyc';
$string =~ /(Beverlyc)/;
print "$1\n";

$string = 'Beverlyxxxc';
$string =~ /(Beverly..+c)/;
print "$1\n";

$string =~ /(Beverly..c)/;
print "$1\n";

$string = 'Beverlyxxc';
$string =~ /(Beverly..c)/;
print "$1\n";
