filetype plugin indent on

syntax on

set nocompatible

set ts=4
set sts=4
set sw=4

set expandtab

" show matching brackets
set showmatch

augroup perl

    " autoindent
    autocmd FileType perl set autoindent
    autocmd FileType perl set smartindent

    " check perl code with :make
    autocmd FileType perl set makeprg=perl\ -c\ %\ $*
    autocmd FileType perl set errorformat=%f:%l:%m
    autocmd FileType perl set autowrite

    " make lines longer than 80 characters errors (including newline)
    autocmd FileType perl match ErrorMsg /\%>79v.\+/

    " make tabs and trailing spaces errors
    autocmd FileType perl 2match ErrorMsg /[\t]\|\s\+\%#\@<!$/

augroup END

