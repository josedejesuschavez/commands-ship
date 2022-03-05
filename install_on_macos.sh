#!/bin/bash

install_brew=$(find /home -type f | grep install_brew.sh)
install_dependencies=$(find /home -type f | grep install_dependencies.sh)
install_oh_my_zsh=$(find /home -type f | grep install_oh-my-zsh.sh)

. ${install_brew}
. ${install_dependencies}
. ${install_oh_my_zsh}

#curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
#	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#vim +'PlugInstall --sync' +qa
