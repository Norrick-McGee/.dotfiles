#!/bin/bash

# Install needed software 
sudo pacman -S --noconfirm neovim tmux fish exa
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

mkdir -p $HOME/.local/bin/
curl -sS https://starship.rs/install.sh | sh -s -- -y --bin-dir $HOME/.local/bin

# Download Packer (neovim package manager) 
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Symlink .dotfile directories and files to .config 
ln -sf ~/.dotfiles/nvim/ ~/.config/
ln -sf ~/.dotfiles/tmux/ ~/.config/
ln -sf ~/.dotfiles/fish/ ~/.config/
ln -sf ~/.dotfiles/starship.toml ~/.config/
ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig

nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync' > /dev/null 2>&1
