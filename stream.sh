#!/bin/sh

SOURCE_URL="$(cat config)"
sleep 5 &&

ffmpeg -f alsa -i hw:0,0 -acodec libmp3lame -ab 32k -ac 1 -content_type audio/mpeg -f mp3 ${SOURCE_URL}
