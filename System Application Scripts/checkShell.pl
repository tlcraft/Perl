#!/usr/bin/perl
# Checks which accounts use sh

use warnings;
use strict;

my ($line,
    $login,
    $pass,
    $uid,
    $gid,
    $name,
    $homeDir, 
    $shell,
    @inputFile);

chomp ( @inputFile = <STDIN> );

print "Users who use sh:\n";

foreach $line ( @inputFile )
{
	($login, $pass, $uid, $gid, $name, $homeDir, $shell) = split(/:/, $line ); 

	if ( defined ( $shell ) && $shell =~ /^\/usr\/bin\/sh$/ )
	{		
		print "$login\n";
	}
}

print "\n";
