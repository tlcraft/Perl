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

chomp ( @inputFile = <> );

print "Users who use sh:\n";

foreach $line ( @inputFile )
{
	if ( ($login, $pass, $uid, $gid, $name, $homeDir, $shell) = split(/:/, $line ) ) 
	{
		print "$login\n" if ( $shell =~ /^\/usr\/bin\/sh$/ );
	}
}

print "\n";
