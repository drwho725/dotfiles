#!/bin/bash

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

ln -sf ~/.config/bashrc ~/.bashrc
ln -sf ~/.config/bash_profile ~/.bash_profile
ln -sf ~/.config/gitconfig ~/.gitconfig
ln -sf ~/.config/tmux.conf ~/.tmux.conf
ln -sf ~/.config/vim ~/.vim
ln -sf ~/.config/vim/vimrc ~/.vimrc
ln -sf ~/.config/vim/gvimrc ~/.gvimrc

mkdir ~/.config/vim/bundle 2>/dev/null
git clone https://github.com/gmarik/Vundle.vim.git ~/.config/vim/bundle/Vundle.vim
vim +PluginInstall +qa

echo "Run install_codesearch then open vim and run :BundleInstall"
