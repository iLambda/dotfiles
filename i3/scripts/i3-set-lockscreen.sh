#!/bin/bash
wallpaper=$(sh -c 'eval "set -- $(sed 1d "$HOME/.fehbg")" && echo $3')
multilockscreen -u $wallpaper --display 1 --fx dimblur
