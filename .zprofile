# XDG Base Directory Specification

# User-specific configuration files (like /etc)
export XDG_CONFIG_HOME="$HOME/.config"

# User-specific non-essential (cached) data (like /var/cache)
export XDG_CACHE_HOME="$HOME/.cache"

# User-specific data files (like /usr/share)
export XDG_DATA_HOME="$HOME/.local/share"

# User-specific state files (like /var/lib)
export XDG_STATE_HOME="$HOME/.local/state"

# Add user-specific binaries to PATH
export PATH="$PATH:$HOME/.local/bin:$HOME/.local/bin/status-bar:$HOME/.local/bin/dmenu"

# Zsh configuration directory
export ZDOTDIR="$HOME/.config/zsh"

# X11 initialization file
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"

# CUDA cache path
export CUDA_CACHE_PATH="$XDG_CACHE_HOME/nv"

# GTK2 configuration files
# export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc:$XDG_CONFIG_HOME/gtk-2.0/gtkrc.mine"

# NPM user configuration
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"

# Qt and Gtk Uniform Look
# export QT_QPA_PLATFORMTHEME=gtk3
export QT_QPA_PLATFORMTHEME=qt5ct

# Automatically start X on login to tty1 if DISPLAY is not set
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    startx
fi

# End of File
