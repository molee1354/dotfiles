
# setting zsh prompt for distrobox containers
if [[ -n ${CONTAINER_ID} ]]; then
    export PS1="%B%F{blue}[${CONTAINER_ID}]%f%b ${PS1}"
fi

# setting TMUX_TMPDIR for tmux sessions in different containers
export TMUX_TMPDIR='/var/tmp'

# sourcing the files
source ~/.config/shell/alias.sh
source ~/.config/shell/functions.sh
