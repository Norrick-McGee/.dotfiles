#!/bin/bash

# Install neovim
sudo pacman -Syu --noconfirm neovim

# Create neovim config file
mkdir -p ~/.config/nvim
touch ~/.config/nvim/init.lua

# Install tmux
sudo pacman -Syu --noconfirm tmux

# Create tmux config file
touch ~/.config/tmux/tmux.conf
echo "set -g mouse on" >> ~/.config/tmux/tmux.conf

# Install fish
sudo pacman -Syu --noconfirm fish

# Create fish config file
mkdir -p ~/.config/fish
touch ~/.config/fish/config.fish


