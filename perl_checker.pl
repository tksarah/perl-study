#!/usr/bin/env perl
use strict;
use warnings;

print "Input string : ";
my $input = <STDIN>;

perl_checker($input);

sub perl_checker {
	my $str = shift;
	chomp $str;
	if ($str =~ /[pP]erl/){
		print "\"$str\" :  Perl Monger!\n";
	} else {
		print "\"$str\" : No\n";
	}
}

