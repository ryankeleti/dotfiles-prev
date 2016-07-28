"   ~/.vimrc  [ @ryankeleti ]

nore ; :
syntax on
filetype on                                                 
filetype plugin indent on
execute pathogen#infect()
autocmd FileType c setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType text setlocal wrap
let g:airline_theme='gruvbox'

colorscheme gruvbox "railscasts solarized
set background=dark
set number
set t_Co=256
set encoding=utf-8
set shell=/bin/bash\ --login
set nocompatible
set title
set ruler
set cul
set more
set paste
set showcmd
set expandtab
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set autoindent
set cindent
set showmatch
set shiftround
set laststatus=2
set modelines=0
set foldmarker={{{,}}}
set foldmethod=marker                                                                 
set cmdheight=2
set scrolloff=5
set noerrorbells
set nobackup
set nowrap
set noswapfile
set lazyredraw
set virtualedit=all
set history=50
set autoread
set mousehide
set ignorecase
set fileformats=unix
set ff=unix
set wildmenu
set wildchar=<TAB>
set noshowmode

