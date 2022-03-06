os=$(uname)

if [[ "${os}" == "Linux" ]]; then
  export PATH=$HOME/.local/bin:$PATH
  export PATH=/home/linuxbrew/.linuxbrew/bin:$PATH
  export PATH=/home/linuxbrew/.linuxbrew/sbin:$PATH
  export PATH=$PATH:/snap/bin
fi

export PATH=${DOTFILES_PATH}/bin:$PATH
