#!/bin/bash

# set wallpaper
feh --bg-scale /home/moosung/Pictures/macbg.png

# set refresh rates
function set_dual() {
    xrandr --output DP-2 --mode 1920x1080 --rate 74.97
    xrandr --output HDMI-1 --mode 1920x1080 --rate 74.97

    # xrandr --output DP-2 --primary --right-of HDMI-1
    xrandr --output HDMI-1 --primary --right-of DP-2
}

function set_wide() {
    # home mode
    xrandr --output HDMI-1 --mode 2560x1080 --rate 100.00
    # xrandr --output eDP-1 --off

    # office mode
    # xrandr --output HDMI-1 --mode 3440x1440 --rate 60.00
    # xrandr --output eDP-1 --off

    # xrandr --output HDMI-1 --primary --mode 1920x1080 --rate 74.97 --left-of eDP-1
    # xrandr --output eDP-1  --on
}

# check count
# COUNT=$(xrandr --query | grep " connected" | cut -d" " -f1 | wc -l)
# if [[ $COUNT -eq 2 ]]; then
#     set_wide
# else
#     xrandr --auto
# fi
set_wide
