#!/bin/bash

setup-omz() {
    echo "==========================================================="
    echo "* Installing Oh-My-Zsh..."
    echo "-----------------------------------------------------------"
    curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | bash
}

setup-p10k() {
    echo "==========================================================="
    echo "* Installing Powerlevel10k..."
    echo "-----------------------------------------------------------"
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
    cat $HOME/dotfiles/.p10k.zsh > $HOME/.p10k.zsh
}

zshrc() {
    echo "==========================================================="
    echo "                  Import zshrc                   "
    echo "-----------------------------------------------------------"
    cat $HOME/dotfiles/zshrc > $HOME/.zshrc
}

cd $HOME
cat $HOME/dotfiles/.vimrc > $HOME/.vimrc
setup-omz
setup-p10k
zshrc