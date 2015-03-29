#!/usr/bin/perl

use 5.006;
use strict; use warnings;
use Text::MostFreqKDistance;
use Test::More tests => 12;

while (<DATA>) {
    chomp;
    my ($string, $expected) = split /\|/, $_, 2;
    is(MostFreqKHashing($string, 2), $expected);
}

done_testing();

__DATA__
my|m1y1
a|a1NULL0
night|n1i1
natch|n1a1
seeking|e2s1
research|r2e2
aaaaabbbb|a5b4
ababababa|a5b4
significant|i3n2
capabilities|i3a2
LCLYTHIGRNIYYGSYLYSETWNTGIMLLLITMATAFMGYVLPWGQMSFWGATVITNLFSAIPYIGTNLV|L9T8
EWIWGGFSVDKATLNRFFAFHFILPFTMVALAGVHLTFLHETGSNNPLGLTSDSDKIPFHPYYTIKDFLG|F9L8
