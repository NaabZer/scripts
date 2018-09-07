#!/bin/bash
TMPBG=/tmp/screen.png
RES=1920x1080

ffmpeg -r 60 -f x11grab -video_size $RES -y -i $DISPLAY -filter_complex "boxblur=7:1" -vframes 1 $TMPBG
i3lock -i $TMPBG
