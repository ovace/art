#!/usr/bin/env bash

# Using facedect https://github.com/wavexx/facedetect
# and Imagemagick.

indir='pics10k'
outdir='faces10k'
nthreads=4
mkdir -p "$outdir"
time ( find "$indir" -type f -print | xargs -P "$nthreads" -I'{}' ./extract-faces-one.sh '{}' "$outdir" )
