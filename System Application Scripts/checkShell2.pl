#!/usr/bin/perl
# Lists users who default to /usr/bin/sh
use warnings;
use strict;

my @fields; # array of password information

print "These users default to /usr/bin/sh:\n";
while( <> )
{
	chomp;
	if ( @fields = split(/:/) )
	{
		print "$fields[4] ($fields[0])\n" if ($fields[6] eq '/usr/bin/sh');
	}
}

print "\n";
