alias sudo='sudo '

alias :q='exit'
alias ea='if [ -f $ALIASFILE ]; then MY_PREV_PATH=$(pwd); cd; chezmoi edit -a ${ALIASFILE:13}; cd $MY_PREV_PATH; unset MY_PREV_PATH; fi' # cd to /home/samuel and edit aliases. ":13" removes "/home/samuel/" from the path, because chezmoi edit needs the path relative to the source directory.

alias ls='ls --color=auto'
alias la='ls -A'
alias ll='ls -lA'
alias ..='cd ..'
alias ...='cd ../..'
alias tree='tree -C'

alias grep='grep --color=auto -i'

alias ipa='ip a'

alias untar='tar -xvzf'

alias g='git'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias gw='git switch'
alias adog='git log --all --decorate --oneline --graph'

alias nv='nvim'
alias vim='nvim'

alias pacman='sudo pacman --color=auto'
alias trizen='trizen --color=auto --noedit --noconfirm'
alias syu='pacman -Syu && notify-send "pacman -Syu" "Done: pacman update completed\!"'
alias tsyu='trizen -Syu && notify-send "trizen -Syu" "Done: AUR + pacman update completed\!"'
alias sp='\trizen -Ss --color=auto'

alias ip='ip -color'

# alias dosbox='dosbox -conf ~/uni/3/micro/dosbox/dosbox.conf ~/uni/3/micro/dosbox/workdir'

alias nf='neofetch'

alias lol='sudo sysctl -w abi.vsyscall32=0'

alias cmatrix='cmatrix -a -u 5 -k -b -C magenta' # solo funciona con cmatrix-git, de AUR

alias watch='watch -c -t'

alias venv='virtualenv'

alias fixwifi='sudo systemctl restart NetworkManager.service wpa_supplicant.service systemd-resolved.service'

alias setupminikubedocker='eval $(minikube -p minikube docker-env)'

# DOESN'T WORK PROPERLY
# Clear and reset wont have \n on the top of the terminal
# alias clear='NEW_LINE_BEFORE_PROMPT=0;clear'
# alias reset='NEW_LINE_BEFORE_PROMPT=0;reset' #redundant, reset uses clear

# Use $XINITRC variable if file exists
[ -f "$XINITRC" ] && alias startx="startx $XINITRC"
