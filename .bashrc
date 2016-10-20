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

HISTFILE=~/.histfile; HISTFILESIZE=; HISTCONTROL="erasedups:ignoreboth:ignorespace"
#unset HISTFILE
export PAGER='/usr/bin/less'; export SUDO_EDITOR='/usr/bin/vim'
bind -x '"\C-b": echo -ne "\033c"'
bind -x '"\C-n": clear && printf "\033[3J"'

alias c='cd ~/c'
alias e='cd ~/c/euler'
alias b='cd bin;pwd'
alias s='cd src;pwd'
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
alias redwm='cd ~/dwm;sudo make clean install'
alias xrdbm='xrdb ~/.Xresources'

branch () { git branch 2> /dev/null|sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/';}

export PROMPT_COMMAND=prompt
prompt () {
PS1=''
#local ex="$?"
local fg=('\[\033[0m\]' '\[\033[0;31m\]' '\[\033[0;32m\]') 
PS1="${PS1}[\u@\h ${fg[1]}§\W${fg[0]}]\$  "
#PS1="${PS1}${fg[1]}──────   ${fg[0]}"
echo
}

#PS1="${fg[14]}$(hostname|cut -b-2) "

files=$HOME/dotfiles
. $files/scripts/.commacd.bash
#. $files/scripts/.bashbar
#. $files/info/infobar

#xrdb -load $HOME/.Xresources
#xrdb -merge $HOME/.Xresources
#complete -W "\`grep -oE '^[a-zA-Z0-9_-]+:([^=]|$)' Makefile | sed 's/[^a-zA-Z0-9_-]*$//'\`" make
cd

