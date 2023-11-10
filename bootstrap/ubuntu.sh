#/bin/bash


# create needed PPAs
sudo add-apt-repository -y ppa:neovim-ppa/stable


sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install cmake neovim tmux exa fish

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

mkdir -p $HOME/.local/bin/
curl -sS https://starship.rs/install.sh | sh -s -- -y --bin-dir $HOME/.local/bin


# Download Packer (neovim package manager) 

rm -rf ~/.local/share/nvim/site/pack/packer/start/packer.nvim

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim


# Define the source and destination directories
move_folder() {
    if [ -d "$1" ]; then    # Check if the folder exists
        mv "$1" "$2"        # Move the folder to the new location
    fi
}

# Usage:
# move_folder <source_folder> <destination_folder>
# Replace the placeholders with your actual folders

move_folder "$HOME/.config/nvim" "$HOME/.config/nvim_backup"
move_folder "$HOME/.config/tmux" "$HOME/.config/tmux_backup"
move_folder "$HOME/.config/fish" "$HOME/.config/fish_backup"

mkdir -p $HOME/.config/
# Symlink .dotfile directories and files to .config 
ln -sf $HOME/.dotfiles/nvim/ $HOME/.config/
ln -sf $HOME/.dotfiles/tmux/ $HOME/.config/
ln -sf $HOME/.dotfiles/fish/ $HOME/.config/
ln -sf $HOME/.dotfiles/starship.toml $HOME/.config/
ln -sf $HOME/.dotfiles/.gitconfig $HOME/.gitconfig


