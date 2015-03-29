#!/usr/bin/perl

use 5.006;
use strict; use warnings;
use Text::MostFreqKDistance;
use Test::More tests => 6;

while (<DATA>) {
    chomp;
    my ($message, $a, $b, $k, $d, $expected) = split /\|/, $_, 6;
    is(MostFreqKSDF($a, $b, $k, $d), $expected, $message);
}

done_testing();

__DATA__
test1|my|a|2|10|10
test2|night|natch|2|10|9
test3|seeking|research|2|10|8
test4|aaaaabbbb|ababababa|2|10|1
test5|significant|capabilities|2|10|7
test6|LCLYTHIGRNIYYGSYLYSETWNTGIMLLLITMATAFMGYVLPWGQMSFWGATVITNLFSAIPYIGTNLV|EWIWGGFSVDKATLNRFFAFHFILPFTMVALAGVHLTFLHETGSNNPLGLTSDSDKIPFHPYYTIKDFLG|2|100|83
