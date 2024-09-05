# alias definitions

alias la="ls -a"
alias ll="ls -l"

# alias vim="/opt/nvim-linux64/bin/nvim"
alias vim=$(which nvim)
alias clip="xclip -sel clip"
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

# tmux related 
alias tns="tmux -f $HOME/dotfiles/.config/tmux/tmux.conf new -s"
alias tks="tmux kill-session -t"
alias tas="tmux attach-session -t"
alias tls="tmux ls"

alias open="xdg-open"

alias set-text="gsettings set org.gnome.desktop.interface text-scaling-factor"

alias estrn="TZ=America/New_York date"
alias kstrn="TZ=Asia/Seoul date"
alias see="okular"
