#!/bin/bash

CALLBACK_FILES=" $HOME/.config/waybar/config.jsonc $HOME/.config/waybar/scripts/* $HOME/.config/waybar/style.css"

trap "killall waybar" EXIT

while true; do
  killall waybar
  waybar &
  inotifywait -e create,modify $CALLBACK_FILES
done
