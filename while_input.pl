#!/usr/bin/env perl
use strict;
use warnings;

while (chomp(my $input = <STDIN>)) {
	if ($input =~ /0/ ){
	last;
	}elsif($input =~ /[pP]erl/ ){
		print "Find Perl!\n";
	}elsif($input =~ /python/i ){
		print "Find Python!\n";
	}elsif($input =~ /pyhton|ruby|perl/ ){
		print "Love Programming!\n";
	}elsif($input =~ /^papix/ ){
		print "Find papix!\n";
	}elsif($input =~ /Hello\s(.*)$/ ){
		print "Hello! $1!\n";
	}

}
