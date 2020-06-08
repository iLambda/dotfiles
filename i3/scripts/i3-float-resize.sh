#!/bin/bash
id=$(xdotool getactivewindow)
wmctrl -i -r $id -e "$(slop -f 0,%x,%y,%w,%h)"
