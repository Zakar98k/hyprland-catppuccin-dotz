#!/usr/bin/env bash

dir="$HOME/.config/rofi/launchers/type-1"
theme="style-1"

## Execute
rofi \
    -show drun \
    -theme ${dir}/${theme}.rasi
