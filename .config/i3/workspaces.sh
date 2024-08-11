TERMINAL="kitty"
BROWSER="${HOME}/.local/bin/firefox"

i3-msg "workspace 1; exec ${TERMINAL}"
i3-msg "workspace 2; exec ${BROWSER}" && i3-msg "workspace 1"
