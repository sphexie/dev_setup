#!/bin/bash

apt install vim -y

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim -u /root/.vimrc.plugs +PluginInstall +qall > /dev/null
