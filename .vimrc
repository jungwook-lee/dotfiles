set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize "
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" previous "
syntax on

:set autoindent
:set cindent

au FileType python setlocal shiftwidth=4 softtabstop=4 expandtab
au FileType cpp setlocal shiftwidth=2 softtabstop=2 expandtab
