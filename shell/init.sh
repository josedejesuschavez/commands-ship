# This is a useful file to have the same aliases/functions in bash and zsh

source "$DOTFILES_PATH/shell/aliases.sh"
source "$DOTFILES_PATH/shell/exports.sh"
source "$DOTFILES_PATH/shell/functions.sh"

if [ -f "$HOME/.zim/zimfw.zsh" ]; then
    zsh ~/.zim/zimfw.zsh install
    rm $HOME/.zim/zimfw.zsh
    
    cat $HOME/.commands-ship/dependencies/brew | xargs -I _ brew install _
    cat $HOME/.commands-ship/dependencies/python | xargs -I _ pip3 install _
    cat $HOME/.commands-ship/dependencies/snap | xargs -I _ sh -c "sudo snap install _"
fi
