#!/usr/bin/perl
# Prints all the lines containing the entered string from the entered file
use warnings;
use strict;

my $file = $ARGV[0]; 		# the input file
my $searchString = $ARGV[1]; 	# the string to search for
my $line;			# a line from the input file

print "\nSearching file " . $file . "\n";
print "For instances of " . $searchString . "\n\n";

open FILE, "<", $file or die $!;

while ($line = <FILE>) 
{
	print $line if ($line =~ /$searchString/);
}

print "\n";
