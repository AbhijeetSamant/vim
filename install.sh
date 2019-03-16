#!/bin/bash

operation=$1
echo "Please provide  username"
case $1 in
    install)
        rm -rf ~/.vim/bundle
        cp .vimrc ~/.vimrc
        git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
        cp -r scripts /home/$2/.vim/
        vim +PluginInstall +qall!
        ;;

    update)
        cp .vimrc ~/.vimrc
        vim +PluginInstall +qall!
        ;;

    *)
        echo "Please provide operation <install | update>"
        ;;
esac
