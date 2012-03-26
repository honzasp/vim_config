set nocompatible

set vb t_vb=

" User interface

set confirm

syntax on
set hlsearch

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

set autowrite

" Mouse and keyboard

set backspace=eol,start,indent
set mouse=a

" switching between buffers
nmap <C-h> <C-W>h
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-l> <C-W>l
nmap <Enter> <C-W>w
nmap <S-Enter> <C-W>W

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

set scrolloff=12
set sidescrolloff=20
set previewheight=5

" Searching and replacing

set ignorecase
set smartcase
set incsearch
set gdefault

" Plugins

let mapleader = ","

let g:EasyMotion_do_shade = 0
let g:solarized_termtrans = 1

call pathogen#infect()

" Color schema
set background=dark
colorscheme solarized
