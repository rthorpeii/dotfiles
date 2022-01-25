#!/bin/bash

setup-omz() {
    echo "==========================================================="
    echo "* Installing Oh-My-Zsh"
    echo "-----------------------------------------------------------"
    curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | bash
    echo "==========================================================="
    echo "* Installing Extensions"
    echo "-----------------------------------------------------------"
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
}

copy-files() {
    echo "==========================================================="
    echo "                  Copying files                   "
    echo "-----------------------------------------------------------"
    cat $(pwd)/.zshrc > $HOME/.zshrc
    cat $(pwd)/.p10k.zsh > $HOME/.p10k.zsh
    cat $(pwd)/.vimrc > $HOME/.vimrc
    cat $(pwd)/.gitconfig > $HOME/.gitconfig
}

setup-omz
copy-files