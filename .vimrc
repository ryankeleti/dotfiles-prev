"   ~/.vimrc  [ @ryankeleti ]

nore ; :
syntax on
filetype on                                                 
filetype plugin indent on

autocmd FileType c setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType text setlocal wrap

"colorscheme railscasts
colorscheme gruvbox
"colorscheme solarized 
execute pathogen#infect()
"call pathogen#helptags()
set background=dark
"let g:promptline_preset = '$PS1'
"let g:promptline_theme = 'airline'


" set {{{
set number
set t_Co=256
set encoding=utf-8
set shell=/bin/bash\ --login
set nocompatible
set title
set ruler
set cul
set more
set showcmd

set expandtab
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set autoindent
set cindent
set shiftround

set laststatus=2
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
" }}}

