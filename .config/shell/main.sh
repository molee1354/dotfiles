
# setting zsh prompt for distrobox containers
if [[ -n ${CONTAINER_ID} ]]; then
    export PS1="%B%F{blue}[${CONTAINER_ID}]%f%b ${PS1}"
fi

# sourcing the files
source ~/.config/shell/alias.sh
source ~/.config/shell/functions.sh
