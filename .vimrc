set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize "
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" required "
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

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
autocmd BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix

" Flag Unnecessary Whitespace "
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
highlight BadWhitespace ctermbg=red guibg=red

" Full Stack "
autocmd BufRead,BufNewFile *.htm,*.html,*.js,*.css setlocal tabstop=2 shiftwidth=2 softtabstop=2

" Set encoding "
set encoding=utf-8

" Hide .pyc files "
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" Line numbering
" set nu

" NERD Tree shortcut "
map <C-n> :NERDTreeToggle<CR>
