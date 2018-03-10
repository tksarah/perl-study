#!/usr/bin/env perl
use strict;
use warnings;



my $words_ref = [
    'alice loves meat!',
    'bob loves sushi!',
];


love_food($words_ref);

sub love_food { 
	my $ref_array = shift;

	foreach my $value (@$ref_array){
		$value =~ /(^.+?)\sloves\s(.+)!$/;
		print "$1 -> $2 \n";
	}
}

