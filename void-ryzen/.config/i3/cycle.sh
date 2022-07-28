#!/bin/sh

xrandr --output HDMI-A-0 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DisplayPort-0 --mode 1680x1050 --pos 519x1080 --rotate normal --output DisplayPort-1 --off
while pgrep -x xrandr > /dev/null; do sleep 0.5; done

feh --bg-fill $(shuf -n 1 -e /home/netman/Wallpapers/feh1/* | tee /home/netman/.betterlockscreen/display1) --bg-fill $(shuf -n 1 -e /home/netman/Wallpapers/feh2/* | tee /home/netman/.betterlockscreen/display2)
while pgrep -x feh > /dev/null; do sleep 0.5; done

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | grep "primary" | cut -d" " -f1); do
    MONITORA=$m polybar --reload zmaslo &
    MONITORB=$m polybar --reload now-playing &
  done
  for n in $(xrandr --query | grep " connected" | grep -wv "primary" | cut -d" " -f1); do
    MONITORC=$n polybar --reload zmaslo-bot &
  done
#else
#  polybar --reload  &
fi

betterlockscreen -u $(cat /home/netman/.betterlockscreen/display1) --fx dimblur -u $(cat /home/netman/.betterlockscreen/display2) --fx dimblur --display 1