#!/bin/sh
cp -r linux/.config/ ~
cp -r linux/.gvimrc ~
cp -r linux/.vim/ ~
cp -r linux/.zlogout ~
cp -r linux/.zshrc ~
if [! -e ~/.vim/repos/github.com/Shougo];then
    mkdir -p ~/.vim/repos/github.com/Shougo
fi
if [! -e ~/.vim/repos/github.com/Shougo/dein.vim];then
    git clone https://github.com/Shougo/dein.vim.git ~/.vim/repos/github.com/Shougo/dein.vim
fi
