#!/bin/bash

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | grep "primary" | cut -d" " -f1); do
    MONITORA=$m polybar --reload zmaslo &
    MONITORA=$m polybar --reload now-playing &
  done
  for m in $(xrandr --query | grep " connected" | grep -wv "primary" | cut -d" " -f1); do
    MONITORR=$m polybar --reload zmaslo-bot &
  done
#else
#  polybar --reload  &
fi
