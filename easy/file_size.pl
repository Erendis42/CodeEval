#!/usr/bin/perl -w
use strict;

my $fn = $ARGV[0];

open FH, "<", $ARGV[0] or die $!; close FH;

print -s $fn;
