#!/usr/bin/env bash
#
# Script for random selection and copying of wallpapers 
# for setups with two separate screens.
#
# Thanks u/orestisf for the code (https://www.reddit.com/r/i3wm/comments/6580vm/how_to_set_multiple_monitors_to_use_the_same/)
#

WALL=$(find "${HOME}/wallpapers/" -type f | sort -R | tail -1)
feh --no-fehbg --bg-scale "$WALL"
