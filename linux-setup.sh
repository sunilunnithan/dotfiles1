#!/bin/bash

echo "Setting up the vim and tmux environment"

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
