#!/bin/bash

echo "---Installing configs ---"


#echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf > /dev/null
sudo apt update
sudo apt install python3-pip -y
pip3 install dotbot
$HOME/.local/bin/dotbot -c $HOME/.dotfiles/symlinks/conf.yaml -d $HOME/.dotfiles
sudo apt install fzf
sudo apt install zsh -y
chsh -s $(which zsh)
mkdir $HOME/.zim
wget -O $HOME/.zim/zimfw.zsh https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
zsh ~/.zim/zimfw.zsh install
