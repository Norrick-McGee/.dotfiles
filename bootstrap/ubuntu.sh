#/bin/bash


# create needed PPAs
sudo add-apt-repository -y ppa:neovim-ppa/stable



sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install neovim tmux exa fish
