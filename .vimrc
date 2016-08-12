" Navigate with jkl; instead of hjkl
"  noremap ; l
"  noremap l k
"  noremap k j
"  noremap j h
syntax on
set smartindent
set number
set tabstop=4
set ruler
set laststatus=2
set hlsearch
set relativenumber
let mapleader=","
call plug#begin()
Plug 'tpope/vim-sensible'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'christoomey/vim-system-copy'
Plug 'Valloric/YouCompleteme'
Plug 'wincent/command-t'

call plug#end()
