#!/usr/bin/perl
use strict; use warnings;
use feature 'say';

my $x = $ARGV[0];

my $usage = <<"END_MSG";
NAME
  coprimes -- prints out all coprimes integers from 2 to N

SYNOPSIS
  $0 integer

DESCRIPTION
  https://en.wikipedia.org/wiki/Coprime_integers

END_MSG
  
say $usage and exit if not $x;

for my $y (2..$x) {
  my $flag = 0;
  for my $i (2..$y) {
    #say "$x $y $i";
    if ( $x % $i == 0 and $y % $i == 0 ){
      $flag++;
      last;
    }
  }
  say $y if $flag==0;
}
