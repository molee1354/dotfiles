#!/bin/env bash

### Commands and such specific to dev container ###

# create APIC tmux session if it doesnt exist
function jjj() {
    TMUX_SESSION_NAME="APIC"
    if [[ -z "$(tmux ls | grep ${TMUX_SESSION_NAME})" ]]; then
        tmux new-session -d -s ${TMUX_SESSION_NAME} -c ${HOME}/projects/Research/APIC
        tmux rename-window -t ${TMUX_SESSION_NAME}:1 dev
        tmux new-window -t ${TMUX_SESSION_NAME} -c ${HOME}/projects/Research/APIC
        tmux rename-window -t ${TMUX_SESSION_NAME}:2 run
        tmux new-window -t ${TMUX_SESSION_NAME}
        tmux rename-window -t ${TMUX_SESSION_NAME}:3 shell
        tmux select-window -t ${TMUX_SESSION_NAME}:1
        echo "Created tmux session APIC"
    else
        echo "Already found session APIC..."
    fi 
}

