#!/bin/bash

os=$(uname)

current_directory="${HOME}/.commands-ship"

if [ "${os}" = "Linux" ]; then
  sudo apt update

  sudo apt install -y build-essential procps curl file wget
  sudo apt install libsquashfuse0 squashfuse fuse
  sudo apt install -y snapd
  sudo chmod 755 /
fi

install_brew=$(find ${current_directory} -type f | grep install_brew.sh)
install_dependencies=$(find ${current_directory} -type f | grep install_dependencies.sh)
install_oh_my_zsh=$(find ${current_directory} -type f | grep install_oh-my-zsh.sh)

. ${install_brew}
. ${install_dependencies}
. ${install_oh_my_zsh}
