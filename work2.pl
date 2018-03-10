#!/usr/bin/env perl
use strict;
use warnings;

my @array = ("hoge","fuga");
my %hash = ( tk => "1" , hk => "2");

output_array_and_hash(\@array,\%hash);


sub output_array_and_hash { 
	my $ref_array = shift;
	my $ref_hash = shift;

	print "Array Output\n";
	foreach my $tmp (@$ref_array){
		print "\t $tmp\n";
	}

	print "\n";

	print "Hash Output\n";
	while ( my ($k , $v) = each %{$ref_hash}){
		print "\t Key : $k\n";
		print "\t Value : $v\n";
	}
}

