#!/bin/bash

echo "Hola"
install_brew=$(find /home -type f | grep install_brew.sh)

#source "$DOTFILES_PATH/shell/init.sh"
. /home/dev/.commands-ship/install/install_brew.sh