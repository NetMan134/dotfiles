#!/bin/bash
feh --bg-fill $(shuf -n 1 -e /home/netman/Wallpapers/feh1/* | tee /home/netman/.betterlockscreen/display1) --bg-fill $(shuf -n 1 -e /home/netman/Wallpapers/feh2/* | tee /home/netman/.betterlockscreen/display2)
while pgrep -x feh >/dev/null; do sleep 1; done
betterlockscreen -u $(cat /home/netman/.betterlockscreen/display1) --fx dimblur -u $(cat /home/netman/.betterlockscreen/display2) --fx dimblur --display 1
