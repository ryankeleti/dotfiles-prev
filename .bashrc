# ~/.bashrc  --  https://github.com/ryankeleti/dotfiles
[[ $- != *i* ]] && return;shopt -s histappend cmdhist checkwinsize autocd
PS1='[\u@\h \W]\$ '
HISTFILE=;HISTFILESIZE=;HISTCONTROL="erasedups:ignoreboth";unset HISTFILE
export PAGER='/usr/bin/less';export SUDO_EDITOR='/usr/bin/vim'
bind -x '"\C-b": clear && printf "\e[3J"'

synclient TapButton1=1;synclient TapButton2=3;synclient TapButton3=2

alias cdd='cd ~/dotfiles';alias qq='exit';alias rm='rm -i';alias mv='mv -i';alias xrdbm='xrdb -merge ~/.Xresources'
alias ls='ls --color=auto';alias la='ls -AF';alias lla='ls -Al';alias lf='ls -F';alias wm='sudo wifi-menu -o wlp1s0'
alias dud1='du -d1 -h|sort -hr';alias diskspace='du -S|sort -nr|more';alias tl="find . -print|sed 's;[^/]*/;|__;g;s;__|; |;g'

export PROMPT_COMMAND=lcmd
lcmd () { local EX="$?";PS1="";local ec='\[\e[0m\]';local rc='\[\e[1;31m\]';local gc='\[\e[1;32m\]'
export PS1="[\u@\h \W] $EX ";if [ $EX != 0 ];then PS1+="${rc}> ${ec}  ";else PS1+="${gc}> ${ec}  ";fi;}

branch () { git branch 2> /dev/null|sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/';}

files=$HOME/dotfiles
. $files/scripts/.commacd.bash
. $files/info/infobar
. $HOME/homex/hhighlighter/h.sh

