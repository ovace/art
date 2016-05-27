#!/usr/bin/env bash
ffmpeg -framerate 4 -pattern_type glob -i 'pics10k/*.jpeg' -c:v libx264 out.mp4
