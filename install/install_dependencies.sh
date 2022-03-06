#!/bin/bash

cd

os=$(uname)

current_directory=$(pwd)
current_directory="${current_directory}/.commands-ship"

brew_path=$(find ${current_directory} -type d | grep .linuxbrew/bin)
export PATH="$brew_path:$PATH"

cat $HOME/.commands-ship/dependencies/brew | xargs -I _ brew install _
cat $HOME/.commands-ship/dependencies/python | xargs -I _ pip3 install _

if [ "${os}" == "Linux" ]; then
  cat $HOME/.commands-ship/dependencies/snap | xargs -I _ sh -c "sudo snap install _"
fi
