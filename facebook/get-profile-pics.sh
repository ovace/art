#!/usr/bin/env bash

# Input: ids.txt containing numeric facebook UIDs.

# TODO: some very few bad files of type:
# - empty file
# - file containing ASCII "Content not found"

mkdir -p pics
# If this is too high, your computer will bog down.
# I think it is memory usage.
nthreads=20
npics=100000
time ( head -n "$npics" ids.txt | xargs -P "$nthreads" -I'{}' ./get-profile-pics-one.sh '{}' )
# If we are downloading the placeholder pic. TODO don't download it.
fdupes -f pics | xargs rm
