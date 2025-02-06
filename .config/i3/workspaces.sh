#!/bin/env bash

TERMINAL="alacritty"
BROWSER=/usr/bin/firefox

i3-msg "workspace 1; exec ${TERMINAL}"
i3-msg "workspace 2; exec ${BROWSER}" && i3-msg "workspace 1"
