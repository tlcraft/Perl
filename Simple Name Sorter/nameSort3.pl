#!/usr/bin/perl
# Rearrange the names using a slightly different approach

use warnings;
use strict;

my (@names,
    $line);

@names = <STDIN>;

foreach $line ( sort @names )
{
 	if ( $line =~ /^(\w*), (\w*)\n/ )
	{
		print "$2 $1\n"
	}
}

print "\n"
