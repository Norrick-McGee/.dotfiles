#/bin/bash


# create needed PPAs
sudo add-apt-repository -y ppa:neovim-ppa/stable



sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install neovim tmux exa fish


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

# Symlink .dotfile directories and files to .config 
ln -sf ~/.dotfiles/nvim/ ~/.config/
ln -sf ~/.dotfiles/tmux/ ~/.config/
ln -sf ~/.dotfiles/fish/ ~/.config/
ln -sf ~/.dotfiles/starship.toml ~/.config/
ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig

nvim --headless -c 'autocmd User PackerComplete quitall'  

