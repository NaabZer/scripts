#!/bin/bash
TMPBG=/tmp/screen.png
RES=1920x1080

#ffmpeg -r 60 -f x11grab -video_size $RES -y -i $DISPLAY -filter_complex "boxblur=7:1" -vframes 1 $TMPBG
i3lock --blur=10 \
    --insidevercolor="#00000000"\
    --insidecolor="#00000000"\
    --insidewrongcolor="#00000000"\
    \
    --ringcolor="e9/e9/f4"\
    --line-uses-ring\
    --clock\
