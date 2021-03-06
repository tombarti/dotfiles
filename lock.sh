#!/usr/bin/env bash

icon="$HOME/.i3/lock_icon.png"
tmpbg='/tmp/screen.png'

(( $# )) && { icon=$1; }

scrot "$tmpbg"
convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
playerctl play-pause
i3lock -u -n -i "$tmpbg"
