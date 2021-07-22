#!/bin/bash

brew_path="/home/linuxbrew/.linuxbrew/bin/"

sudo apt update

if ! [ -x "$(command -v brew)" ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  
  
fi

${brew_path}/brew install wget
${brew_path}/brew install python
${brew_path}/brew install zsh
${brew_path}/brew  install fzf

${brew_path}/pip3 install dotbot

${brew_path}/dotbot -c $HOME/.commands-ship/configs/symlinks.yaml -d $HOME/.commands-ship

export PATH="${brew_path}:$PATH"

#chsh -s $(which zsh)
sudo chsh -s ${brew_path}/zsh "${USER}"


if [ ! -d "$HOME/.zim" ]; then
  mkdir $HOME/.zim
  wget -O $HOME/.zim/zimfw.zsh https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
  zsh ~/.zim/zimfw.zsh install
fi




#curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
#	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#vim +'PlugInstall --sync' +qa
