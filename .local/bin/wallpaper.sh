#!/usr/bin/env bash
if pidof "hyprpaper" >/dev/null; then
	killall hyprpaper
fi

IMAGE=$1
WALLPAPER="$HOME/wallpapers/wallpaper.png"
cp $IMAGE $WALLPAPER
sleep 0.8 && hyprpaper &
