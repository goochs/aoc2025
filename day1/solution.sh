#!/usr/bin/env bash

# Split lists, sort
<input cut -d ' ' -f1 | sort > left
<input cut -d ' ' -f4 | sort > right

# Part 1
awk 'NR==FNR{a[NR]=$1; next} {s+=sqrt((a[FNR] - $1) * (a[FNR] - $1))} END {print s}' left right
# Part 2
awk 'NR==FNR{count[$1]++; next } { score += $1 * count[$1] } END { print score }' right left

