#!/bin/bash

echo "starting to setup your linux machine"


# install all the dev tools 
sudo yum groupinstall 'Development tools'
sudo yum install vim tmux

# go to the home directory
cd ~

# clone the repo

git clone https://github.com/sunilunnithan/dotfiles.git

# copy the dot files

cp ~/dotfiles/vimrc ~/.vimrc
cp ~/dotfiles/tmux.conf ~/.tmux.conf

# setup vim 
mkdir .vim
mkdir .vim/autoload
mkdir .vim/bundle
mkdir .vim/colors
mkdir .vim/ftplugin

# get vim plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim +PluginInstall +qall


# setup tmux plugin manager
mkdir -p .tmux/plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# start tmux and press <prefix> I to install all the plugins
