#!/usr/bin/perl
# Prints all the lines containing the entered string from the entered file
use warnings;
use strict;

my $line = $ARGV[0]; 		# a line from the input file
my $searchString = $ARGV[1]; 	# the string to search for

print "\nSearching file " . $line . "\n";
print "For instances of " . $searchString . "\n\n";

while ($line = <>) 
{
	print $line if ($line =~ /$searchString/);
}

print "\n";
