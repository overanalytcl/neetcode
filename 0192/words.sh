#!/usr/bin/bash

awk '{
    gsub(/ /,"\n");
    for(i=1; i<=NF; i++) {
        if($i != "") {
            count[$i]++;
        }
    }
}
END {
    for(word in count) {
        print word, count[word];
    }
}' words.txt | sort -k2,2nr

# Or, to cheat a bit:
# perl -lane 'foreach $word (@F) { $count{$word}++ if $word ne "" }; END { print "$_ $count{$_}" for (sort { $count{$b} <=> $count{$a} } keys %count) }' words.txt
# words.pl is the full version.