#!/bin/bash

brew_path=$(find /home -type d | grep .linuxbrew/bin)
export PATH="$brew_path:$PATH"

cat $HOME/.commands-ship/dependencies/brew | xargs -I _ brew install _
cat $HOME/.commands-ship/dependencies/python | xargs -I _ pip3 install _
#cat $HOME/.commands-ship/dependencies/snap | xargs -I _ sh -c "sudo snap install _"
