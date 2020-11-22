#!/usr/bin/env bash
#
# Script for random selection of wallpapers 
# for light and dark set by time.
#
WALL_DK=$(find "$~/wallpapers/dk/" -type f | sort -R | tail -1 && redshift -x && redshift -O 3000)
WALL_LT=$(find "$~/wallpapers/lt/" -type f | sort -R | tail -1 && reshift -x)
TIME=$(date  +%H:%M)
START="18:00"
FINISH="08:00"

if [[ "$TIME" > "$START" ]] || [[ "$TIME" < "$FINISH" ]]; then
     wal -i ~/wallpapers/dk/ && pywalfox update && feh --no-fehbg --bg-scale "$WALL_DK"
   else
     wal -i ~/wallpapers/lt/ -l && pywalfox update && feh --no-fehbg --bg-scale "$WALL_LT"
   fi