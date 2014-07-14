#!/usr/bin/perl
# Second exmaple of sorting names this time using pattern matching
# Still takes in a list of names in the 'last, first' format and
# then prints them in alphabetical order in the 'first last' format

use warnings;
use strict;

my (	@nameArray,
	@sortedArray,
	$line);

chomp( @nameArray = <STDIN> );
@sortedArray = sort @nameArray;

foreach $line ( @sortedArray ) 
{
	if ( $line =~ /^(.*), (.*)$/ ) 
	{
		print "$2 $1\n";
	}
}

print "\n";
