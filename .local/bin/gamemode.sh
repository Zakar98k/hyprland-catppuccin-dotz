#!/usr/bin/env sh
HYPRGAMEMODE=$(hyprctl getoption animations:enabled | awk 'NR==1{print $2}')
if [ "$HYPRGAMEMODE" = 1 ]; then
	hyprctl --batch "\
        keyword animations:enabled 0;"
	exit
fi
hyprctl reload
