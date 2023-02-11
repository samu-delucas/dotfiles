# dotfiles
Repository with my dotfiles, managed using [chezmoi](https://www.chezmoi.io/)

## Install chezmoi and dotfiles on a new machine
``` sh
$ sudo echo 'XDG_CONFIG_HOME=$HOME/.config\nZDOTDIR=$XDG_CONFIG_HOME/zsh' > /etc/zsh/zshenv
$ sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply samu-delucas
```
