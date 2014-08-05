#!/usr/bin/perl
# Displays the best score for each person
use warnings;
use strict;

my (	$name,
	$score,
	%highscores);

while(<>)
{
	chomp;
	($name, $score) = split /\s+/;
	if ( defined($highscores{$name}) )
	{
		$highscores{$name} = $score if $score > $highscores{$name}
	}
	else
	{
		$highscores{$name} = $score
	}
}

foreach $name (sort keys %highscores)
{
	print $name . ' ' x (10 - length($name)) . $highscores{$name} . "\n"
}
