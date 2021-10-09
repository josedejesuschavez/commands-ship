#!/bin/bash

brew_path="/home/linuxbrew/.linuxbrew/bin/"

sudo apt update

if ! [ -x "$(command -v brew)" ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

export PATH="${brew_path}:$PATH"

sudo apt-get remove git
sudo apt-get -y purge python3.8
sudo apt-get -y autoremove

#${brew_path}/brew list -1 | xargs ${brew_path}/brew rm
#${brew_path}/brew cleanup

${brew_path}/brew install wget
${brew_path}/brew install python
${brew_path}/brew install zsh
${brew_path}/brew install fzf
${brew_path}/brew install git

${brew_path}/pip3 install dotbot

${brew_path}/dotbot -c $HOME/.commands-ship/configs/symlinks.yaml -d $HOME/.commands-ship

sudo chsh -s ${brew_path}/zsh "${USER}"

if [ ! -d "$HOME/.zim" ]; then
  mkdir $HOME/.zim
  ${brew_path}/wget -O $HOME/.zim/zimfw.zsh https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
  ${brew_path}/zsh ~/.zim/zimfw.zsh install
fi

#curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
#	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#vim +'PlugInstall --sync' +qa
