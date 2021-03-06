#!/usr/bin/perl -w

# CHALLENGE DESCRIPTION:
#
# Players  generally  sit in a circle. The first player says the number “1”, and
# each  player says next number in turn. However, any number divisible by X (for
# example,  three)  is  replaced  by  the word fizz, and any divisible by Y (for
# example,  five)  by the word buzz. Numbers divisible by both become fizz buzz.
# A player who hesitates, or makes a mistake is eliminated from the game.
#
# Write  a  program  that  prints  out  the  final series of numbers where those
# divisible  by  X,  Y  and  both are replaced by “F” for fizz, “B” for buzz and
# “FB” for fizz buzz.

use strict;

open FH, "<", $ARGV[0] or die $!;

while (<FH>)
{
    my ($d1, $d2, $n) = split ' ', $_;
    for (1..$n)
    {
        print $_ unless ($_ % $d1 == 0) || ($_ % $d2 == 0);
        print (($_ % $d1 == 0 ? "F" : "") . ($_ % $d2 == 0 ? "B" : "") . " " );
    }
    print "\n";
}

close FH;
