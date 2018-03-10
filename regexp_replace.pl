#!/usr/bin/env perl
use strict;
use warnings;

my $str = 'I love ruby';

print "Before : $str \n";

$str =~ s/ruby/perl/;

print "After : $str \n";

