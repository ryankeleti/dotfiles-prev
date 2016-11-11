#===========================================#
#                                           #
#   .bashrc                                 #
#                                           #
#   https://github.com/ryankeleti/dotfiles  #
#                                           #
#===========================================#

[[ $- != *i* ]] && return;
shopt -s histappend cmdhist checkwinsize autocd
PS1='[\u@\h \W]\$ '
#PS1="[$(hostname|cut -b-2)@\h \[\033[33m\]§\W\[\033[0m\] $(acpi|tr ' ' '\n'|grep '%'|tr -d '%,')]\$  "
getbat () { acpi|tr ' ' '\n'|grep '%'|tr -d '%,';}
#PS1="[$(hostname|cut -b-2)@\h \[\033[33m\]§\W\[\033[0m\] $(getbat)]\$  "
PS1='\h: Δ\W \u »>  '

HISTFILE=~/.histfile;HISTFILESIZE=;HISTCONTROL="erasedups:ignoreboth:ignorespace"

export PAGER='/usr/bin/less';export SUDO_EDITOR='/usr/bin/vim';export PROMPT_COMMAND=
bind -x '"\C-b": echo -ne "\033c"'
bind -x '"\C-n": clear && printf "\033[3J"'

#=========================================================#
alias c='cd ~/c'
alias e='cd ~/c/src/euler'
alias s='cd src'
alias qq='exit'
alias rm='rm -i'
alias mv='mv -i'
alias v='vim'
alias ls='ls --color=auto'
alias la='ls -AF'
alias ll='ls -Al'
alias dud1='du -d1 -h|sort -hr'
alias diskspace='du -S|sort -nr|more'
alias wm='sudo wifi-menu -o wlp1s0'
alias rme='rm -i `find . -perm /111 -type f`'
alias tl="find . -print|sed 's;[^/]*/;|__;g;s;__|; |;g'"
alias redwm='cd ~/dwm;sudo make clean install;cd'
alias xrdbm='xrdb ~/.Xresources'
alias setf='setfont /usr/share/kbd/consolefonts/ter-112n.psf.gz'
alias ac="acpi|tr ' ' '\n'|grep '%'|tr -d '%,'"
#=========================================================#

if [ "$TERM" = "linux" ]; then
  echo -en "\e]P0232323"
  echo -en "\e]P82B2B2B"
  echo -en "\e]P1D75F5F"
  echo -en "\e]P9E33636"
  echo -en "\e]P287AF5F"
  echo -en "\e]PA98E34D"
  echo -en "\e]P3D7AF87"
  echo -en "\e]PBFFD75F"
  echo -en "\e]P48787AF"
  echo -en "\e]PC7373C9"
  echo -en "\e]P5BD53A5"
  echo -en "\e]PDD633B2"
  echo -en "\e]P65FAFAF"
  echo -en "\e]PE44C9C9"
  echo -en "\e]P7E5E5E5"
  echo -en "\e]PFFFFFFF"
  clear
fi

branch () { git branch 2>/dev/null|sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/';}

files=$HOME/dotfiles
. $files/scripts/.commacd.bash

#PS1="──────   "
#unset HISTFILE
#complete -W "\`grep -oE '^[a-zA-Z0-9_-]+:([^=]|$)' Makefile | sed 's/[^a-zA-Z0-9_-]*$//'\`" make
cd

#α
#β
#γ Γ
#δ Δ
#η
#ω Ω
#π Π
#σ Σ
#ξ Ξ
#ν
#μ
#θ Θ
#κ
#λ Λ
#ρ
#τ
#φ Φ
#χ
#ζ
#------
#×
#±
#¬
#»
#«
#≥
#≤
#°
#¡!
#å
#ß
#¿?

