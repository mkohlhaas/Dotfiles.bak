#!/bin/sh

find . -iname '*.mp4' -exec ffprobe -v quiet -of csv=p=0 -show_entries format=duration {} \; | paste -sd+ -| bc | awk '{printf("%02d:%02d:%02d\n",($1/60/60%24),($1/60%60),($1%60))}'
