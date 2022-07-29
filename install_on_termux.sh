#!/bin/bash

os=$(uname)

current_directory="${HOME}/.commands-ship"

cat $HOME/.commands-ship/dependencies/brew | xargs -I _ apt install _
cat $HOME/.commands-ship/dependencies/python | xargs -I _ pip install _

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
