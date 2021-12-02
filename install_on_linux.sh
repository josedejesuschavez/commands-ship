#!/bin/bash

sudo apt update

sudo apt install -y build-essential procps curl file wget
if ! [ -x "$(command -v brew)" ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

sudo apt install libsquashfuse0 squashfuse fuse

sudo chmod 755 /

brew_path=$(find /home -type d | grep .linuxbrew/bin)
export PATH="$brew_path:$PATH"

#sudo apt remove -y git
#sudo apt purge -y python3
#sudo apt autoremove -y

cat $HOME/.commands-ship/dependencies/brew | xargs -I _ brew install _
cat $HOME/.commands-ship/dependencies/python | xargs -I _ pip3 install _


dotbot -c $HOME/.commands-ship/configs/symlinks.yaml -d $HOME/.commands-ship


echo "brew_path=$(find /home -type d | grep .linuxbrew/bin)" >> $HOME/.bashrc
echo "exec ${brew_path}/zsh" >> $HOME/.bashrc
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


#curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
#	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#vim +'PlugInstall --sync' +qa
