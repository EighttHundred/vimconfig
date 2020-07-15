#!/bin/bash

cp -R vimrcs ~/.vimrcs 
echo "source ~/.vimrcs/basic.vim" >> ~/.vimrc
vim +PluginInstall +qall
echo "install success"
