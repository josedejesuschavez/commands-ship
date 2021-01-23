#!/bin/bash

echo "---Installing configs ---"

#echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf > /dev/null
sudo apt update
sudo apt install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo apt install python3-pip -y
pip3 install dotbot
export PATH=/home/jchavez/.local/bin:$PATH
dotbot -c symlinks/conf.yaml
