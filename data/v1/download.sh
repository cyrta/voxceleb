#!/bin/bash

# PREREQUISITES:
# youtube-dl
# ffmpeg 
#
# USAGE: 
# chmod +x download.sh
# ./download.sh PATH_TO_DATA/list.txt

while IFS='' read -r line || [[ -n "$line" ]]; do
    echo "Downloading $line"
    youtube-dl --extract-audio --audio-format mp3 --audio-quality 1 --output "$line.%(ext)s" $line
    sleep .2
done < "$1"