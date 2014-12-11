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

set ignorecase
set smartcase
set incsearch
set gdefault

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

" from nerdtree's README
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" EasyMotion
let g:EasyMotion_do_shade = 1
hi link EasyMotionTarget Todo
hi link EasyMotionShade  Comment

let g:EasyMotion_grouping = 1
let g:EasyMotion_keys = 'fdsagtrvchuyjnbiklnexwzqimopFDSAGTRVCHUYJNBIKLNEXWZQIMOP'
let g:EasyMotion_leader_key = '<tab>'

" CtrlP
let g:ctrlp_working_path_mode = '0'

function InvokeBuild(command)
  wa
  cexp system(a:command)
endfunction

command Tup call InvokeBuild('tup')
command Cargo call InvokeBuild('cargo build')
command Cabal call InvokeBuild('cabal build')
