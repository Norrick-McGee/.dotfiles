#!/bin/bash

# Install needed software 
sudo pacman -S --noconfirm neovim tmux fish

# Symlink .dotfile directories and files to .config 
ln -sf ~/.dotfiles/nvim/ ~/.config/
ln -sf ~/.dotfiles/tmux/ ~/.config/
ln -sf ~/.dotfiles/fish/ ~/.config/


