#!/usr/bin/env perl
use strict;
use warnings;

print "Input 1 : ";
my $num1 = <STDIN>;
chomp $num1;

print "Input 2 : ";
my $num2 = <STDIN>;
chomp $num2;

#my ($tasu,$hiku,$kake,$waru) = calc($ARGV[0],$ARGV[1]);
# Function
my ($tasu,$hiku,$kake,$waru) = calc($num1,$num2);

# Output 
print "\n";
print "Add = $tasu\n";
print "Min = $hiku\n";
print "Mul = $kake\n";
print "Div = $waru\n\n";

sub calc {
	my ($one,$two) = @_;
	my $add = $one + $two;
	my $min = $one - $two;
	my $mul = $one * $two;
	my $div = $one / $two;
	
	return ($add,$min,$mul,$div);
}
