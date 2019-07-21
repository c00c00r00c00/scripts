#!/usr/bin/perl
use strict; use warnings;
use feature 'say';

my $x=<>;
for my $y (2..$x) {
  my $flag = 0;
  for my $i (2..$y) {
    $flag++ if $x%$i==0 and $y%$i==0;
  }
  say $y if $flag==0;
}
