#!/bin/bash

echo "---Installing configs ---"
sudo apt update
sudo apt install python3-pip -y
pip3 install dotbot
$HOME/.local/bin/dotbot -c $HOME/.dotfiles/configs/symlinks.yaml -d $HOME/.dotfiles
sudo apt install fzf zsh -y
chsh -s $(which zsh)
mkdir $HOME/.zim
wget -O $HOME/.zim/zimfw.zsh https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
zsh ~/.zim/zimfw.zsh install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +'PlugInstall --sync' +qa
/home/linuxbrew/.linuxbrew/bin/brew install node
#/home/linuxbrew/.linuxbrew/bin/npm install -g tldr
chmod -R 777 $HOME/.dotfiles/commands