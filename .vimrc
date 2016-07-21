" .vimrc  [ ryanku / @ryankeleti ]

syntax on
filetype on                                                 
filetype plugin indent on

colorscheme railscasts
execute pathogen#infect()
call pathogen#helptags()

" set {{{

set number
set t_Co=256
set encoding=utf-8
set shell=/bin/bash\ --login
set nocompatible
set title
set ruler
set cul
set background=
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
set showbreak="--- "
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

" Functions? {{{
"function! ClearText(type, ...)
"        let sel_save = &selection
"        let &selection = "inclusive"
"        let reg_save = @@
"        if a:0
"            silent exe "normal! '<" . a:type . "'>r w"
"        elseif a:type == 'line'
"            silent exe "normal! '[V']r w"
"        elseif a:type == 'line'
"            silent exe "normal! '[V']r w"
"    elseif a:type == 'block'
"        silent exe == "normal! `[\<C-V>`]r w"
"    else
"        silent exe == "normal! `[v`]r w"
"    endif
"    let &selection = sel_save
"    let @@ = reg_save
"endfunction
" }}}

nore ; :

autocmd FileType c setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType text setlocal wrap


