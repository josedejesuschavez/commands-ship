#!/bin/bash

os=$(uname)

if [ "${os}" = "Linux" ]; then
  brew_path=$(find /home -type d | grep .linuxbrew/bin)
  export PATH="${brew_path}:$PATH"
fi

cat $HOME/.commands-ship/dependencies/brew | xargs -I _ brew install _
cat $HOME/.commands-ship/dependencies/python | xargs -I _ pip3 install _
