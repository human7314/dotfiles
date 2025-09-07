# Arch, btw
fastfetch

# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}'
zstyle :compinstall filename '/home/zero/.config/zsh/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.config/zsh/.histfile
HISTSIZE=5000
SAVEHIST=10000
setopt autocd
bindkey -v

# direnv
eval "$(direnv hook zsh)"

# Theme
# fpath+=($HOME/.config/zsh/pure)

# autoload -U promptinit; promptinit
# prompt pure

# Aliases
source $HOME/.config/zsh/aliases.zsh

# SSH-agent
eval $(keychain --eval --quiet ~/.config/.ssh/id_ed25519)

# Plugins 
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# End of file
