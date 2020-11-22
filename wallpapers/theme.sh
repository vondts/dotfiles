#!/usr/bin/env bash
#
# Script for random selection of wallpapers 
# for light and dark set by time.
#
WALL_DK=$(redshift -x && find "$~/wallpapers/dk/" -type f | sort -R | tail -1 && redshift -O 2300)
WALL_LT=$(redshift -x && find "$~/wallpapers/lt/" -type f | sort -R | tail -1)
TIME=$(date  +%H:%M)
START="18:00"
FINISH="08:00"

if [[ "$TIME" > "$START" ]] || [[ "$TIME" < "$FINISH" ]]; then
     wal -i ~/wallpapers/dk/ && pywalfox update && feh --no-fehbg --bg-scale "$WALL_DK"
   else
     wal -i ~/wallpapers/lt/ -l && pywalfox update && feh --no-fehbg --bg-scale "$WALL_LT"
   fi