#!/usr/bin/env bash

file="$1"
outdir="$2"
basename="$(basename "$file")"
i=0
facedetect "$file" | while read x y w h; do
  convert "$file" -crop ${w}x${h}+${x}+${y} "${outdir}/${basename%.*}_${i}.${basename##*.}"
  i=$(($i+1))
done
