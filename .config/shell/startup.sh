#!/usr/bin/env bash

# picom launch
picom -b --config $HOME/.config/picom/picom.conf 

# startup scripts
SCRIPTS="$HOME/.config/shell/scripts"
for startup_script in ${SCRIPTS}/*; do
    if [[ ${startup_script} == ${SCRIPTS}/"nightlight.sh" ]]; then
        continue
    fi
    . ${startup_script}
done

# polybar launch
$HOME/.config/polybar/launch.sh

# set system tray network status icon
nm-applet
