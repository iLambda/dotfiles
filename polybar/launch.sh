#!/bin/bash
(
  flock 200

  killall -q polybar

  while pgrep -u $UID -x polybar > /dev/null; do sleep 0.5; done

  outputs=$(xrandr --query | grep " connected" | cut -d" " -f1)
  tray_output=eDP-1

  for m in $outputs; do
    echo $m
    export MONITOR=$m
    export TRAY_POS=none
    if [[ $m == $tray_output ]]; then
      TRAY_POS=right
      echo "Found tray"
    fi
    polybar --reload bottom -c ~/.config/polybar/config-bottom.ini </dev/null >/var/tmp/polybar-bot-$m.log 2>&1 200>&- & 
    polybar --reload top -c ~/.config/polybar/config-top.ini </dev/null >/var/tmp/polybar-top-$m.log 2>&1 200>&- & 
    disown
  done
) 200>/var/tmp/polybar-launch.lock
