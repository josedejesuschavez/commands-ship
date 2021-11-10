#!/bin/bash

sudo apt update > /dev/null

sudo apt install -y build-essential procps curl file wget > /dev/null
if ! [ -x "$(command -v brew)" ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

sudo apt install libsquashfuse0 squashfuse fuse

sudo chmod 755 /

brew_path=$(find /home -type d | grep .linuxbrew/bin)

sudo apt remove -y git
sudo apt purge -y python3
sudo apt autoremove -y

cat $HOME/.commands-ship/dependencies/brew | xargs -I _ ${brew_path}/brew install _
cat $HOME/.commands-ship/dependencies/python | xargs -I _ ${brew_path}/pip3 install _

${brew_path}/dotbot -c $HOME/.commands-ship/configs/symlinks.yaml -d $HOME/.commands-ship

sudo chsh -s ${brew_path}/zsh "${USER}"

if [ ! -d "$HOME/.zim" ]; then
  mkdir $HOME/.zim
  ${brew_path}/wget -O $HOME/.zim/zimfw.zsh https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
fi

#curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
#	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#vim +'PlugInstall --sync' +qa
