"  ~/.vimrc  -- https://github.com/ryankeleti/dotfiles

no ; :
no qq :q
no \\ :nohl
no \\\ :se hls
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
colo default
      
se nocp bg=dark t_Co=256 enc=utf-8 shell=/bin/bash\ --login
se nu rnu title ru more sc et sta sw=2 sts=2 ts=2
se ai cin sm sr ar smd mh ic ls=2 
se fmr={{{,}}} fdm=marker
se nowrap nobk noswf noeb lz so=5 ve=all history=10
se ff=unix ffs=unix
se wmnu wc=<TAB>

hi Search cterm=underline ctermbg=none ctermfg=none
let @/ =" "

