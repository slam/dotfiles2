#!/bin/sh

if [ ! -d ~/.vim/bundle/vundle/ ]
then
  mkdir -p ~/.vim/bundle/vundle/
fi

if [ ! -d ~/.vim/bundle/vundle/.git/ ]
then
  git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi

vim --noplugin -u ~/.vim/vundles.vim -N "+set hidden" "+syntax on" +BundleClean! +BundleInstall +qall
