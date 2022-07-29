#!/bin/bash

os=$(uname)

current_directory="${HOME}/.commands-ship"

cat $HOME/.commands-ship/dependencies/brew | xargs -I _ apt install _
cat $HOME/.commands-ship/dependencies/python | xargs -I _ pip install _

#install_brew=$(find ${current_directory} -type f | grep install_brew.sh)
#install_dependencies=$(find ${current_directory} -type f | grep install_dependencies.sh)
install_oh_my_zsh=$(find ${current_directory} -type f | grep install_oh-my-zsh.sh)

#. ${install_brew}
#. ${install_dependencies}
#. ${install_oh_my_zsh}
