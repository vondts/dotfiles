#!/usr/bin/env bash
#
# Script for random selection of wallpapers 
# for light and dark set by time.
#

TIME=$(date  +%H:%M)
START="18:00"
FINISH="08:00"

if [[ "$TIME" > "$START" ]] || [[ "$TIME" < "$FINISH" ]]; then
     wal -i ~/wallpapers/dk/ && pywalfox update
   else
     wal -i ~/wallpapers/lt/ -l && pywalfox update
   fi