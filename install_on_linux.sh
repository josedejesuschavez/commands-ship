#!/bin/bash

install_brew=$(find /home -type f | grep install_brew.sh)
install_dependencies=$(find /home -type f | grep install_dependencies.sh)
install_oh_my_zsh=$(find /home -type f | grep install_oh-my-zsh.sh)

sudo apt update

sudo apt install -y build-essential procps curl file wget
sudo apt install libsquashfuse0 squashfuse fuse
sudo apt install -y snapd
sudo chmod 755 /

. ${install_brew}
. ${install_dependencies}
. ${install_oh_my_zsh}

#curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
#	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#vim +'PlugInstall --sync' +qa
