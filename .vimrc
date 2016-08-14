syntax on
set smartindent
set number
set tabstop=4
set ruler
set laststatus=2
set hlsearch
set ignorecase
set smartcase
set incsearch
set relativenumber
set omnifunc=syntaxcomplete#Complete
set mouse=a
set bg=dark
set undofile

"Removes the highlight after a search by pressing enter again.
nnoremap <silent><CR> :noh<CR>

"Adding Gundo Tree toggle
nnoremap <F5> :GundoToggle<CR>
let g:gundo_right = 1

nmap <F6> :TagbarToggle<CR>

"To insert the answer to a mathematical equation type (in insert mode) "C-r="
"and then the equation.

filetype plugin indent on

"Adds dot functionality to Visual mode
vnoremap . :normal .<cr>

call plug#begin()
Plug 'tpope/vim-sensible'
" On-demand loading
" Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

"Could potentially lose this plugin for Omnicomplete functionality instead
"(C-X C-O)
Plug 'Valloric/YouCompleteme'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'christoomey/vim-system-copy'
Plug 'wincent/command-t'
Plug 'lervag/vimtex'
Plug 'sjl/gundo.vim'

"Adds online thesaurus to vim. Press <leader>K to access
Plug 'beloglazov/vim-online-thesaurus'

Plug 'ludovicchabant/vim-gutentags'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'majutsushi/tagbar'

call plug#end()
