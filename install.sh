#!/bin/bash

echo "---Installing configs ---"

#echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf > /dev/null
sudo apt update
sudo apt install python3-pip -y
pip3 install dotbot
sudo apt install zsh -y
#chsh -s $(which zsh)

#sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
