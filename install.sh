#!/bin/bash

# brew install, need check if brew and ripgrep is installed

brew install ripgrep

# backup 
backup_folder="$PWD/.backup/"
gitconfig="$HOME/.gitconfig"
zshrc="$HOME/.zshrc"
tmux="$HOME/.tmux.conf"
nvim_folder="$HOME/.config/nvim"

if [ ! -d "$backup_folder" ]; then
  mkdir -p "$backup_folder" || echo "Error backup folder"
fi

# link backup files
files=($gitconfig $zshrc $tmux)
# files=($nvim_folder) need fix when its a LinkSymbolic

for file in "${files[@]}"; do
    if [ -L "$file" ]; then
        rm $file
    else
      if [ -d "$file" ]; then
        cp -r $file $backup_folder
      else
        cp $file $backup_folder
      fi
      rm -rf $file
    fi
done

# git
ln -sf "$PWD/configs/.gitconfig" ~/

# zsh
ln -sf "$PWD/configs/.zshrc" ~/

# tmux
ln -sf "$PWD/tmux/.tmux.conf" ~/

# yabai
ln -sf "$PWD/yabai/.yabairc" ~/

# nvim
ln -sf "$PWD/nvim" ~/.config

# skhd
ln -sf "$PWD/skhd/.skhdrc" ~/

echo "installed 🔥"
