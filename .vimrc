"#==========================================#
"#                                          #
"#  .vimrc                                  #
"#                                          #
"#  https://github.com/ryankeleti/dotfiles  #
"#                                          #
"#==========================================#

no ; :
no qq :q
no \\\ :sy off
no \\ :sy on
no nn :se nocin noai
"nmap <Up> <NOP>
"nmap <Down> <NOP>
"nmap <Left> <NOP>
"nmap <Right> <NOP>
sy on
filet on
filet plugin indent on
au FileType c setl et sw=2 sts=2
au FileType python setl et sw=4 sts=4
au FileType text setl wrap
colo true-monochrome 

se bg=dark
se cin 

se nocp noai 
se sm sr ar smd mh ic ls=2
se t_Co=256 enc=utf-8 shell=/bin/bash\ --login
se nu rnu title ru more sc et sta 
se sw=2 sts=2 ts=2
se fmr={{{,}}} fdm=marker
se nowrap nobk noswf noeb lz so=5 
"se ve=all 
se history=10
se ff=unix ffs=unix
se wmnu wc=<TAB>

hi Search cterm=underline ctermbg=none ctermfg=none
let @/ =" "

