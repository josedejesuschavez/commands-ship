#!/bin/bash

brew_path=$(find /home -type d | grep .linuxbrew/bin)

echo "brew_path=$(find /home -type d | grep .linuxbrew/bin)" >> $HOME/.bashrc
echo "exec ${brew_path}/zsh" >> $HOME/.bashrc

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
