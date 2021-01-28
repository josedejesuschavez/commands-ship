#!/bin/bash

echo "---Installing configs ---"
sudo apt update
sudo apt install python3-pip -y
pip3 install dotbot
$HOME/.local/bin/dotbot -c $HOME/.dotfiles/symlinks/conf.yaml -d $HOME/.dotfiles
sudo apt install fzf zsh -y
chsh -s $(which zsh)
mkdir $HOME/.zim
wget -O $HOME/.zim/zimfw.zsh https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
zsh ~/.zim/zimfw.zsh install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
chmod -R 777 $HOME/.dotfiles/scripts
