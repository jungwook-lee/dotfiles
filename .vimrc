set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize "
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" required "
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'

call vundle#end()
filetype plugin indent on

" previous "
syntax on

set autoindent
set cindent

au FileType cpp setlocal shiftwidth=2 softtabstop=2 expandtab

" Set splits to occur below, right as default"
set splitbelow
set splitright

" Set new commands to move splitscreens "
noremap <A-J> <C-W><C-J>
noremap <A-K> <C-W><C-K>
noremap <A-L> <C-W><C-L>
noremap <A-H> <C-W><C-H>

" Code Folding "
set foldmethod=indent
set foldlevel=99
noremap <space> za

" Docstring for folded code "
let g:SimpylFold_docstring_preview=1

" Pep 8 indentation"
au BufNewFile,BufRead *.py 
    \ set tabstop=4
    \   softtabstop=4
    \   shiftwidth=4
    \   textwidth=79
    \   expandtab
    \   autoindent
    \   fileformat=unix

" Full Stack "
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \   softtabstop=2
    \   shiftwidth=2
