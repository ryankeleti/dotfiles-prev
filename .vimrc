set number
set t_Co=256
syntax on
colorscheme railscasts
execute pathogen#infect()
filetype plugin indent on
"call pathogen#helptags()
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set smartindent
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
set nocompatible
set shell=bash\ --login

