#!/bin/bash

echo "---Installing configs ---"

#echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf > /dev/null
sudo apt update
sudo apt install python3-pip -y
pip3 install dotbot
$HOME/.local/bin/dotbot -c $HOME/.dotfiles/symlinks/conf.yaml
sudo apt install fzf
sudo apt install zsh -y
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh

chsh -s $(which zsh)
mkdir $HOME/.zim
wget -O $HOME/.zim/zimfw.zsh https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
zsh ~/.zim/zimfw.zsh install
