#!/bin/bash

# Install needed software 
sudo pacman -S --noconfirm neovim tmux fish

# Symlink neovim config directory  
ln -s ~/.dotfiles/nvim/ ~/.config/


# Create tmux config file
ln -s ~/.dotfiles/tmux/ ~/.config/
# echo "set -g mouse on" >> ~/.config/tmux/tmux.conf


# Create fish config file
ln -s ~/.dotfiles/fish/ ~/.config/


