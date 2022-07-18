#!/bin/bash
feh --bg-fill $(shuf -n 1 -e /home/netman/Wallpapers/* | tee /home/netman/.betterlockscreen/display)
while pgrep -x feh >/dev/null; do sleep 1; done
betterlockscreen -u $(cat /home/netman/.betterlockscreen/display) --fx dimblur --display 1
