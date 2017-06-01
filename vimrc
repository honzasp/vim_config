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
colorscheme default

" Disable concealing in Rust
let g:no_rust_conceal=1
let g:rust_recommended_style=0
let g:cargo_makeprg_params='build --color never'

" recognize .tpp as C++
autocmd BufNewFile,BufRead *.tpp set filetype=cpp
" recognize .md as markdown
autocmd BufNewFile,BufRead *.md set filetype=markdown

" CtrlP
let g:ctrlp_working_path_mode = '0'

" Python indenting
autocmd FileType python setlocal softtabstop=4
autocmd FileType python setlocal tabstop=4
autocmd FileType python setlocal shiftwidth=4

" Enable project-specific .vimrc
set exrc
set secure
