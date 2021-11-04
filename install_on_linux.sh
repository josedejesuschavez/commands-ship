#!/bin/bash

sudo apt update

sudo apt install build-essential procps curl file wget libsquashfuse0 squashfuse fuse snapd
if ! [ -x "$(command -v brew)" ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

sudo snap install core

sudo chmod 755 /

brew_path=$(find /home -type d | grep .linuxbrew/bin)

#export PATH="${brew_path}:$PATH"

#sudo apt-get remove git
#sudo apt-get -y purge python3.8
#sudo apt-get -y autoremove

#${brew_path}/brew list -1 | xargs ${brew_path}/brew rm
#${brew_path}/brew cleanup

cat dependencies/brew | xargs -I _ ${brew_path}/brew install _
cat dependencies/python | xargs -I _ ${brew_path}/pip3 install _

${brew_path}/dotbot -c $HOME/.commands-ship/configs/symlinks.yaml -d $HOME/.commands-ship

sudo chsh -s ${brew_path}/zsh "${USER}"

#wget -nv -O - https://raw.githubusercontent.com/zimfw/install/master/install.zsh | ${brew_path}/zsh

if [ ! -d "$HOME/.zim" ]; then
  mkdir $HOME/.zim
  ${brew_path}/wget -O $HOME/.zim/zimfw.zsh https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
#  ${brew_path}/zsh ~/.zim/zimfw.zsh install
fi

#curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
#	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#vim +'PlugInstall --sync' +qa
