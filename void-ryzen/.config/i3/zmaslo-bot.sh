#!/bin/bash

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
