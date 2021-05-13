#!/bin/bash

if ! [ -x "$(command -v brew)" ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "---Installing configs ---"

if ! [ -x "$(command -v pip3)" ]; then
  sudo apt install python3-pip -y
fi
if ! [ -x "$(command -v dotbot)" ]; then
  pip3 install dotbot
fi

"$(command -v dotbot)" -c $HOME/.commands-ship/configs/symlinks.yaml -d $HOME/.commands-ship

if ! [ -x "$(command -v fzf)" ]; then
  sudo apt install fzf
fi

if ! [ -x "$(command -v zsh)" ]; then
  sudo apt install zsh
fi

chsh -s $(which zsh)

if [ ! -d "$HOME/.zim" ]; then
	mkdir $HOME/.zim
	wget -O $HOME/.zim/zimfw.zsh https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
	zsh ~/.zim/zimfw.zsh install
fi




#curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
#	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#vim +'PlugInstall --sync' +qa
