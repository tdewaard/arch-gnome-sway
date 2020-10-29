#!/bin/sh
IMAGE=/tmp/screen.png

grim -o $(swaymsg -t get_outputs | jq -r '.[] | select(.focused) | .name') /tmp/screen.png

convert /tmp/screen.png -scale 25% -blur 0x2 -scale 400% -fill black -colorize 50% /tmp/screen.png
[[ -f $1 ]] && convert /tmp/screen.png $1 -gravity center -composite -matte /tmp/screen.png

swaylock -s fill -i /tmp/screen.png
