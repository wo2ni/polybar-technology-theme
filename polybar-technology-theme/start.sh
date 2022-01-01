#!/bin/bash

#---------------;
# Start Polybar ; 
#---------------;
DIR='/usr/share/polybar/polybar-technology-theme'

# Terminate already running bar instances
pkill -9 polybar >/dev/null 2>&1
pkill -9 polybar >/dev/null 2>&1
pkill -9 polybar >/dev/null 2>&1

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null 
do 
    sleep 1 
done

polybar -q top -c "${DIR}"/config.ini >/dev/null 2>&1 & 
