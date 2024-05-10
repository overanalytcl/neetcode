#!/usr/bin/perl

use strict;
use warnings;

my %count;

while (my $line = <>) {
    chomp $line;
    my @words = split /\s+/, $line;
    foreach my $word (@words) {
        $count{$word}++ if $word ne "";
    }
}

foreach my $word (sort { $count{$b} <=> $count{$a} } keys %count) {
    print "$word $count{$word}\n";
}
