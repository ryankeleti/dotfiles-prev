"   ~/.vimrc  -- @ryankeleti 

nore ; :
nore qq :q
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
syntax on
filetype on                                                 
filetype plugin indent on
autocmd FileType c setlocal et sw=2 sts=2
autocmd FileType python setlocal et sw=4 sts=4
autocmd FileType text setlocal wrap

set bg=dark t_Co=256 enc=utf-8 shell=/bin/bash\ --login
set nu rnu nocp title ru cul more sc et sta sw=2 sts=2 ts=2
set ai cin sm sr ar smd mh ic ls=2 
set fmr={{{,}}} fdm=marker                                                                 
set nowrap nobk noswf noeb lz so=5 ve=all history=10
set ff=unix ffs=unix
set wmnu wc=<TAB>

