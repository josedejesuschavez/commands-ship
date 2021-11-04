# This is a useful file to have the same aliases/functions in bash and zsh

source "$DOTFILES_PATH/shell/aliases.sh"
source "$DOTFILES_PATH/shell/exports.sh"
source "$DOTFILES_PATH/shell/functions.sh"

#Update/script
#UpdateCommandsFromGit/script

if [ -f "$HOME/.zim/zimfw.zsh" ]; then
    zsh ~/.zim/zimfw.zsh install
    rm $HOME/.zim/zimfw.zsh
    
    cat $HOME/.commands-ship/dependencies/snap | xargs -I _ sh -c "sudo snap install _"
    
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    vim +'PlugInstall --sync' +qa
fi
