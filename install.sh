#!/usr/bin/env bash

working_dir=$PWD

mkdir -p ~/.vim/bundle
ln -s $working_dir/vimrc ~/.vimrc
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
