#!/bin/sh
# shell script to prepend i3status with more stuff

i3status -c ~/.i3/i3status.conf | while :
do
        read line
        playing=$( mpc current )
        echo "$playing | $line" || exit 1
done
