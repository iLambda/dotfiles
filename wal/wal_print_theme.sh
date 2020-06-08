#!/bin/bash

eval "set -- $(sed 1d "$HOME/.fehbg")"
zenity --info --text="Current wallpaper is  $3" --no-wrap
