set nocompatible

set vb t_vb=

" User interface

set confirm

syntax on
set nohlsearch

set history=50
set wildmenu
set shortmess+=a

set ruler
set showmode
set showcmd
set showfulltag
set display+=lastline
set number

set nrformats=alpha,hex
set showmatch
set matchpairs+=<:>

set autowrite

" Mouse and keyboard

set backspace=eol,start,indent
set mouse=a

" Text formatting

filetype plugin indent on

set wrap
set linebreak

" no tabs, just two spaces
set expandtab
set softtabstop=2
set tabstop=2
set shiftwidth=2
set shiftround " TODO: set off for Haskell?
set smarttab
set autoindent

set formatoptions=tcqrn
set textwidth=80

set scrolloff=2
set sidescrolloff=20
set previewheight=5

" Searching and replacing

set incsearch
set gdefault

" Splits
set splitbelow
set splitright

" Plugins

let mapleader = ","

call pathogen#infect()

" Color scheme
let g:solarized_bold = 0
let g:solarized_termtrans = 1
set background=light
colorscheme default

" Disable concealing in Rust
let g:no_rust_conceal=1
let g:rust_recommended_style=0

" from nerdtree's README
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" recognize .tpp as C++
autocmd BufNewFile,BufRead *.tpp set filetype=cpp

" CtrlP
let g:ctrlp_working_path_mode = '0'

" Rainbow parentheses
autocmd FileType clojure RainbowParenthesesToggle
autocmd FileType clojure RainbowParenthesesLoadRound
autocmd FileType clojure RainbowParenthesesLoadSquare
autocmd FileType clojure RainbowParenthesesLoadBraces

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
