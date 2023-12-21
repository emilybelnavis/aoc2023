#!/bin/sh

YR=2023
DAY=$1

if [ -z "$DAY" ]; then
    DAY=$(date +%e | tr -d " ")
fi

if [ -r .aoc-session ]; then
    AOC_SESSION=$(cat .aoc-session)
fi

if [ -z "$AOC_SESSION" ]; then
    echo "no session found"
    exit 1
fi

echo "getting puzzle input for day $DAY"

D2=$(printf "%02d" $DAY)

(

UA="https://github.com/emilybelnavis/aoc2023"
curl -s https://adventofcode.com/$YR/day/$DAY/input --cookie "session=$AOC_SESSION" -H "User-Agent: $UA"



) >Sources/Data/Day$D2.txt