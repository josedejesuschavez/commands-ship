#!/bin/bash

sudo apt update

sudo apt install build-essential procps curl file wget
if ! [ -x "$(command -v brew)" ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

sudo apt install libsquashfuse0 squashfuse fuse
sudo apt install snapd

sudo snap install core

sudo chmod 755 /

brew_path=$(find /home -type d | grep .linuxbrew/bin)

sudo apt-get remove git
sudo apt-get -y purge python3
sudo apt-get -y autoremove

cat $HOME/.commands-ship/dependencies/brew | xargs -I _ ${brew_path}/brew install _
cat $HOME/.commands-ship/dependencies/python | xargs -I _ ${brew_path}/pip3 install _
cat $HOME/.commands-ship/dependencies/snap | xargs -I _ sh -c "sudo snap install _"

${brew_path}/dotbot -c $HOME/.commands-ship/configs/symlinks.yaml -d $HOME/.commands-ship

sudo chsh -s ${brew_path}/zsh "${USER}"

if [ ! -d "$HOME/.zim" ]; then
  mkdir $HOME/.zim
  ${brew_path}/wget -O $HOME/.zim/zimfw.zsh https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
fi

#curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
#	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#vim +'PlugInstall --sync' +qa
