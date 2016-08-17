syntax on
set smartindent
set number
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
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
set scrolloff=2
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//

:let mapleader = "\<Space>"

"Removes the highlight after a search by pressing enter again.
nnoremap <silent><CR> :noh<CR>

"Adding Gundo Tree toggle
nnoremap <Leader>u :GundoToggle<CR>
let g:gundo_right = 1

nmap <Leader><Space>  :TagbarToggle<CR>

"To insert the answer to a mathematical equation type (in insert mode) "C-r="
"and then the equation.

nmap <Leader>w :w<CR>
nmap <Leader>q :wq<CR>
"<Leader>K is Thesaurus
"<Leader>t is Fuzzy Finder

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

"Some recommended settings for Syntastic that seem to be fucking up my status
"bar
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"End of recommended settings for Syntastic

" Function to set tabstop, softtabstop and shiftwidth to the same value
command! -nargs=* Stab call Stab()
function! Stab()
    let l:tabstop = 1 * input('set tabstop = softtabstop = shiftwidth = ')
    if l:tabstop > 0
        let &l:sts = l:tabstop
        let &l:ts = l:tabstop
        let &l:sw = l:tabstop
    endif
    call SummarizeTabs()
endfunction

function! SummarizeTabs()
    try
        echohl ModeMsg
        echon 'tabstop='.&l:ts
        echon ' shiftwidth='.&l:sw
        echon ' softtabstop='.&l:sts
        if &l:et
            echon ' expandtab'
        else
            echon ' noexpandtab'
        endif
    finally
        echohl None
    endtry
endfunction
