#!/usr/bin/env bash

# picom launch
picom -b --config $HOME/.config/picom/picom.conf 

# startup scripts
ROOT="$HOME/.config/shell/scripts"
for startup_script in ${ROOT}/*; do
    if [[ ${startup_script} == ${ROOT}/"nightlight.sh" ]]; then
        continue
    fi
    . ${startup_script}
done

# polybar launch
$HOME/.config/polybar/launch.sh

# python3 $HOME/work.py

# set system tray network status icon
nm-applet
