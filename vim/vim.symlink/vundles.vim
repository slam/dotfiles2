" ========================================
" Vim plugin configuration
" ========================================
"
" This file contains the list of plugin installed using vundle plugin manager.
" Once you've updated the list of plugin, you can run vundle update by issuing
" the command :BundleInstall from within vim or directly invoking it from the
" command line with the following syntax:
" vim --noplugin -u ~/.vim/vundles.vim -N "+set hidden" "+syntax on" +BundleClean! +BundleInstall +qall
" Filetype off is required by vundle
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle (required)
Bundle "gmarik/vundle"

" All your bundles here

" Html, Xml, Css, Markdown...
Bundle "jtratner/vim-flavored-markdown.git"

" Git related...
Bundle "gregsexton/gitv"
Bundle "mattn/gist-vim"
Bundle "tjennings/git-grep-vim"
Bundle "tpope/vim-fugitive"
Bundle "tpope/vim-git"

" General text editing improvements...
Bundle "vim-scripts/matchit.zip"

" Wiki
Bundle "vim-scripts/vimwiki"

" General vim improvements
Bundle "jeetsukumaran/vim-buffergator"
Bundle "kien/ctrlp.vim"
Bundle "mattn/webapi-vim.git"
Bundle "rking/ag.vim"
Bundle "vim-scripts/lastpos.vim"
Bundle "vim-scripts/sudo.vim"
Bundle "vim-scripts/YankRing.vim"
Bundle "tpope/vim-sleuth"

" Cosmetics, color scheme, Powerline...
Bundle "altercation/vim-colors-solarized"

"Filetype plugin indent on is required by vundle
filetype plugin indent on
