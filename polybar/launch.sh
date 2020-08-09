#!/bin/bash

# terminate already running bars
killall -q polybar

# wait for the processes to shut down 
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

#launch polybar using default config locatio
polybar mybar &

echo "Polybar launched"
