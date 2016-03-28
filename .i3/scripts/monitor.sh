#!/bin/bash

IN="LVDS-1"
VGA="VGA-1"
HDMI="HDMI-1"

if (xrandr | grep "$VGA disconnected"); then
	CMD="xrandr --output $IN --auto --output $VGA --off"
else
	CMD="xrandr --output $IN --auto --primary --output $VGA --auto --left-of $IN"
fi

${CMD}
	
if (xrandr | grep "$HDMI disconnected"); then
	CMD="xrandr --output $HDMI --off"
else
	CMD="xrandr --output $IN --auto --primary --output $HDMI --auto --left-of $IN"
fi

${CMD}
