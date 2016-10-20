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
PS1="[$(hostname|cut -b-2)@\h \[\033[33m\]§\W\[\033[0m\]]\$  "

HISTFILE=~/.histfile;HISTFILESIZE=;HISTCONTROL="erasedups:ignoreboth:ignorespace"

export PAGER='/usr/bin/less';export SUDO_EDITOR='/usr/bin/vim';export PROMPT_COMMAND=
bind -x '"\C-b": echo -ne "\033c"'
bind -x '"\C-n": clear && printf "\033[3J"'

#=========================================================#
alias c='cd ~/c'
alias e='cd ~/c/euler'
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
#=========================================================#

branch () { git branch 2>/dev/null|sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/';}

files=$HOME/dotfiles
. $files/scripts/.commacd.bash

#PS1="──────   "
#unset HISTFILE
#complete -W "\`grep -oE '^[a-zA-Z0-9_-]+:([^=]|$)' Makefile | sed 's/[^a-zA-Z0-9_-]*$//'\`" make
cd

