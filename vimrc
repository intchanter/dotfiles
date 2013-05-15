syntax enable

" Start Vundle config
filetype off " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" My bundles
Bundle 'scrooloose/syntastic'

filetype plugin indent on " required!
" End Vundle config

source ~/.vim/perl.vim
source ~/.vim/python.vim
source ~/.vim/personal.vim
