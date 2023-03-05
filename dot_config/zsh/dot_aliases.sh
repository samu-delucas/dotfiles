alias sudo='sudo '

alias :q='exit'
alias :qaaa='exit'
alias ea='nv $ALIASFILE'

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
alias .git='/usr/bin/git --git-dir=$HOME/.dotsrepo/ --work-tree=$HOME'

alias nv='nvim'
alias vim='nvim'

alias pacman='sudo pacman --color=auto'
alias trizen='trizen --color=auto --noedit'
alias syu='pacman -Syu'
alias tsyu='trizen -Syu'
alias sp='\trizen -Ss --color=auto'

alias ip='ip -color'

alias vpnuam='sudo bash ~/.dots/vpnuam'
alias vpnuamoff='sudo vpnc-disconnect'
# alias vmplayer='sudo systemctl start vmware-usbarbitrator.path vmware-networks.path; sudo vmplayer'
alias arqocluster='echo WGtTvzK; ssh -oHostKeyAlgorithms=+ssh-dss clusterArqo'
alias arqoclusterscp='echo WGtTvzK; scp -oHostKeyAlgorithms=+ssh-dss'
alias dosbox='dosbox -conf ~/uni/3/micro/dosbox/dosbox.conf ~/uni/3/micro/dosbox/workdir'
alias activatesi1='source si1pyenv/bin/activate'

alias nf='neofetch'

alias lol='sudo sysctl -w abi.vsyscall32=0'

alias cmatrix='cmatrix -a -u 5 -k -b -C magenta' # solo funciona con cmatrix-git, de AUR

alias watch='watch -c -t'

alias venv='virtualenv'

# DOESN'T WORK PROPERLY
# Clear and reset wont have \n on the top of the terminal
# alias clear='NEW_LINE_BEFORE_PROMPT=0;clear'
# alias reset='NEW_LINE_BEFORE_PROMPT=0;reset' #redundant, reset uses clear

# Use $XINITRC variable if file exists
[ -f "$XINITRC" ] && alias startx="startx $XINITRC"
