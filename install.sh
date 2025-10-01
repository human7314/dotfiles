#!/bin/bash

# Determine the directory where this script is located
DOTFILES="$(dirname "$(realpath "$0")")"
CONFIG="$HOME/.config"

# Make sure .config exists
mkdir -p "$CONFIG"

# List of directories to sync into ~/.config
dirs=(
  X11
  dunst
  fastfetch
  feh
  nvim
  picom
  sxhkd
  zathura
  zsh
)

for dir in "${dirs[@]}"; do
  if [ -d "$DOTFILES/$dir" ]; then
    echo "→ Syncing $dir to $CONFIG/$dir"
    rsync -av --delete "$DOTFILES/$dir/" "$CONFIG/$dir/"
  else
    echo "⚠️ Skipping $dir (not found)"
  fi
done

# Move .zprofile to $HOME
if [ -f "$DOTFILES/.zprofile" ]; then
    echo "→ Moving .zprofile to $HOME"
    cp -f "$DOTFILES/.zprofile" "$HOME/.zprofile"
else
    echo "⚠️ .zprofile not found in $DOTFILES"
fi

echo "✅ Dotfiles installation complete!"

