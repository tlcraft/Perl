#!/usr/bin/perl
# Sorts a list of names from a given file
# Names are given as 'Last, First' and output as 'First Last'
use warnings;
use strict;

my (@fileNames,		# array of input
    @sortedNames,	# array of sorted names
    $line,		# an input line (last, first) 
    $first,		# a first name 
    $last);		# a last name

chomp (@fileNames = <STDIN>);
@sortedNames = sort @fileNames;

foreach $line (@sortedNames)
{
	($last, $first) = split /, /, $line;
	if ( defined $first && defined $last)
	{
		print "$first $last\n";
	}
}

print "\n";
