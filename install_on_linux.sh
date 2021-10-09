#!/bin/bash

brew_path="/home/linuxbrew/.linuxbrew/bin/"

sudo apt update

if ! [ -x "$(command -v brew)" ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  
  sudo apt-get remove git
  sudo apt-get -y purge python3.8
  sudo apt-get -y autoremove
fi

export PATH="${brew_path}:$PATH"

brew list -1 | xargs brew rm
brew cleanup

brew install wget
brew install python
brew install zsh
brew install fzf
brew install git

pip3 install dotbot

echo "Installed dotbot"

#${brew_path}/dotbot -c $HOME/.commands-ship/configs/symlinks.yaml -d $HOME/.commands-ship

#chsh -s $(which zsh)
#sudo chsh -s ${brew_path}/zsh "${USER}"

#if [ ! -d "$HOME/.zim" ]; then
#  mkdir $HOME/.zim
#  ${brew_path}/wget -O $HOME/.zim/zimfw.zsh https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
#  ${brew_path}/zsh ~/.zim/zimfw.zsh install
#fi

#sudo apt-get remove git
#sudo apt-get -y purge python3.8
#sudo apt-get -y autoremove


#curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
#	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#vim +'PlugInstall --sync' +qa
