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
au FileType markdown setl wrap
"colo true-monochrome 
"colo default
"colo hybrid_e7
"colo gruvbox
"colo bnw
colo apprentice

"se nohlsearch
"se noincsearch

se bg=dark
se cin 

se t_Co=256
se enc=utf-8 
se shell=/bin/bash\ --login
se nu 
se rnu 

se nocp 
se noai 
se sm 
se sr 
se ar 
se smd 
se mh 
se ic 
se ls=2
se title 
se ru 
se more 
se sc 
se et 
se sta 
se sw=2 
se sts=2 
se ts=2
se fmr={{{,}}} 
se fdm=marker
se nowrap 
se nobk 
se noswf 
se noeb 
se lz 
se so=5 
"se ve=all 
se history=10
se ff=unix 
se ffs=unix
se wmnu 
se wc=<TAB>

"hi Search cterm=underline ctermbg=none ctermfg=none
"let @/ =" "

"highlight Type ctermfg=103
"highlight cssClassName ctermfg=6
"highlight cssClassNameDot ctermfg=6
"highlight link jsFuncCall Type
"highlight cssBraces ctermfg=fg
"highlight htmlLink ctermfg=fg
"highlight Function ctermfg=182
"highlight MatchParen ctermfg=182 ctermbg=232
"highlight Constant ctermfg=210
"highlight htmlH1 ctermfg=fg
"highlight StartifyHeader ctermfg=231
"highlight Normal ctermbg=black
"highlight Search ctermfg=0 ctermbg=110
"highlight IncSearch ctermfg=0 ctermbg=2 cterm=none
"highlight Cursor ctermfg=0 ctermbg=fg
"highlight Directory ctermfg=7
"highlight StatusLine ctermbg=0 ctermfg=7
"highlight WildMenu ctermbg=253 ctermfg=0
"highlight TODO ctermbg=0 ctermfg=6 cterm=bold
"highlight VertSplit ctermbg=0 ctermfg=238
"highlight DiffChange cterm=none ctermfg=0 ctermbg=103
"highlight DiffText cterm=none ctermfg=0 ctermbg=13
"highlight DiffDelete cterm=none ctermfg=0 ctermbg=131
"highlight DiffAdd cterm=none ctermfg=0 ctermbg=108
"highlight LineNr ctermbg=234
"highlight SignColumn ctermbg=234
"highlight FoldColumn ctermbg=234
"highlight CursorLine   ctermbg=234
"highlight CursorLineNR ctermbg=234
"highlight ErrorMsg ctermbg=bg ctermfg=73
"highlight ModeMsg  ctermbg=bg ctermfg=73
"highlight TermCursor cterm=none ctermfg=bg ctermbg=fg
"highlight TermCursorNC cterm=none ctermfg=bg ctermbg=fg
"highlight link StartifySlash Directory
"highlight SneakPluginTarget ctermbg=10 ctermfg=0 cterm=none
"highlight SneakStreakTarget ctermbg=10 ctermfg=0 cterm=none
"highlight SneakStreakMask ctermbg=10 ctermfg=10 cterm=none
"highlight link SneakPluginScope  Comment
"highlight ColorColumn ctermbg=235
"highlight GitGutterChange ctermfg=13 ctermbg=234
"highlight link GitGutterChangeDelete GitGutterChange
"highlight Folded ctermbg=233

