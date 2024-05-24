#!/bin/bash

# swapping ctrl and caps
/usr/bin/setxkbmap -option "ctrl:swapcaps"

# touchpad/mouse pointer speed settings
xinput set-prop `xinput --list | grep -oP "0 Touchpad.*?id=\K\d+"` 'libinput Accel Speed' 0.3
xinput set-prop `xinput --list | grep -oP "0 Mouse.*?id=\K\d+"` 'libinput Accel Speed' 0.1

# scroll direction
xinput set-prop `xinput --list | grep -oP "0 Touchpad.*?id=\K\d+"` 'libinput Natural Scrolling Enabled' 1
xinput set-prop `xinput --list | grep -oP "0 Mouse.*?id=\K\d+"` 'libinput Natural Scrolling Enabled' 0

# scroll speed
xinput set-prop `xinput --list | grep -oP "0 Touchpad.*?id=\K\d+"` 'libinput Scrolling Pixel Distance' 50

# enable tapping
xinput set-prop `xinput --list | grep -oP "0 Touchpad.*?id=\K\d+"` 'libinput Tapping Enabled' 1

