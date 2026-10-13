#!/bin/bash

mkdir -p out/volume-5
find volume-5 -type f | while read line; do
  lilypond -o out/volume-5 $line
  lilypond -E -o out/volume-5 $line
done
