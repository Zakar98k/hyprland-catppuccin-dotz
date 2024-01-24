#!/bin/bash

## Set GTK Themes, Icons, Cursor and Fonts

THEME='Catppuccin-Mocha-Standard-Mauve-Dark'
ICONS='Colloid-grey-dark'
FONT='Satoshi Variable Regular 11'
CURSOR='Qogir 24'

SCHEMA='gsettings set org.gnome.desktop.interface'

apply_themes() {
	${SCHEMA} gtk-theme "$THEME"
	${SCHEMA} icon-theme "$ICONS"
	${SCHEMA} cursor-theme "$CURSOR"
	#${SCHEMA} font-name "$FONT"
}

# apply_themes
# hyprctl setcursor $CURSOR
paplay ~/Music/sounds/startup.wav
