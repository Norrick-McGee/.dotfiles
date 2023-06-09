#!/bin/bash

# Install needed software 
sudo pacman -S --noconfirm neovim tmux fish exa starship

# Download Packer (neovim package manager) 
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Symlink .dotfile directories and files to .config 
ln -sf ~/.dotfiles/nvim/ ~/.config/
ln -sf ~/.dotfiles/tmux/ ~/.config/
ln -sf ~/.dotfiles/fish/ ~/.config/
ln -sf ~/.dotfiles/starship.toml ~/.config/

nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync' > /dev/null 2>&1
