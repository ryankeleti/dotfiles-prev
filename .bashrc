#===========================================# 
#                                           #
#   .bashrc                                 #
#                                           #
#   https://github.com/ryankeleti/dotfiles  #
#                                           #
#===========================================#

[[ $- != *i* ]] && return; shopt -s histappend cmdhist checkwinsize autocd
PS1='[\u@\h \W]\$ '

HISTFILE=~/.histfile; HISTFILESIZE=; HISTCONTROL="erasedups:ignoreboth:ignorespace"
#unset HISTFILE
export PAGER='/usr/bin/less'; export SUDO_EDITOR='/usr/bin/vim'

bind -x '"\C-b": echo -ne "\033c" '
bind -x '"\C-n": clear && printf "\033[3J"'

alias c='cd ~/c'
alias e='cd ~/c/euler'
alias b='cd bin;pwd'
alias s='cd src;pwd'

alias rme='rm -i `find . -perm /111 -type f`'

alias qq='exit';alias rm='rm -i';alias mv='mv -i';alias v="vim"
alias ls='ls --color=auto';alias la='ls -AF';alias lla='ls -Al';alias wm='sudo wifi-menu -o wlp1s0'
alias dud1='du -d1 -h|sort -hr'
alias diskspace='du -S|sort -nr|more'
alias tl="find . -print|sed 's;[^/]*/;|__;g;s;__|; |;g'"
alias redwm='cd ~/dwm;sudo make clean install';alias rest='cd ~/st;sudo make install;cd'
alias xrdbm='xrdb ~/.Xresources'

branch () { git branch 2> /dev/null|sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/';}

export PROMPT_COMMAND=            
#lcmd () {
#local ex="$?"; PS1=""; local ec='\[\033[0m\]'; local rc='\[\033[0;31m\]'; local gc='\[\033[0;32m\]'
#export PS1="\[\033[0;37m\]§\W "
#
#  if [ $ex != 0 ]; then
#    PS1+="${rc} λ   ${ec}"
#    if [ $ex == 127 ]; then
#      printf "%${COLUMNS}s\n" "∄"
#    else 
#      printf "%${COLUMNS}s\n" "∵ $ex"
#    fi
#  else
#    PS1+="${gc} λ   ${ec}"
#    printf "%${COLUMNS}s\n" "¬ $ex "
#  fi
#}

files=$HOME/dotfiles
. $files/scripts/.commacd.bash
. $files/scripts/.bashbar
#. $files/info/infobar

#xrdb -load $HOME/.Xresources
#xrdb -merge $HOME/.Xresources
#complete -W "\`grep -oE '^[a-zA-Z0-9_-]+:([^=]|$)' Makefile | sed 's/[^a-zA-Z0-9_-]*$//'\`" make;
cd

