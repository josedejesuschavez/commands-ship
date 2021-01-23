#!/bin/bash

echo "---Installing configs ---"

#echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf > /dev/null
sudo apt update
sudo apt install python3-pip -y
pip3 install dotbot
#/home/jchavez/.local/bin/dotbot -c symlinks/conf.yaml
sudo apt install fzf
sudo apt install zsh -y
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
chsh -s $(which zsh)

/home/jchavez/.local/bin/dotbot -c symlinks/conf.yaml
