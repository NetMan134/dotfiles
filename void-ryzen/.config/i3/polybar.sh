#!/usr/bin/env sh

# kill existing
pkill polybar

# wait until they die of blood loss
while pgrep -x polybar >/dev/null; do sleep 1; done

# launch the 2 bars
polybar zmaslo &
polybar now-playing &
