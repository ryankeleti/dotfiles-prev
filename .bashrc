# ~/.bashrc  --  https://github.com/ryankeleti/dotfiles
[[ $- != *i* ]] && return;shopt -s histappend cmdhist checkwinsize autocd
PS1='[\u@\h \W]\$ '
HISTFILE=;HISTFILESIZE=;HISTCONTROL="erasedups:ignoreboth";unset HISTFILE
export PAGER='/usr/bin/less';export SUDO_EDITOR='/usr/bin/vim' 
alias cdd='cd ~/dotfiles';alias qq='exit';alias rm='rm -i';alias mv='mv -i';alias dir='dir --color=auto';alias vi='vim'
alias ls='ls --color=auto';alias la='ls -AF';alias lla='ls -Al';alias lf='ls -F';alias tl="find . -print|sed 's;[^/]*/;|__;g;s;__|; |;g'"
alias dud1='du -d1 -h|sort -hr';alias diskspace='du -S|sort -nr|more';alias wm='sudo wifi-menu -o wlp1s0';alias xrdbm='xrdb -merge ~/.Xresources'
bind -x '"\C-b": clear && printf "\e[3J"'
export PROMPT_COMMAND=lastcmd
lastcmd () { local EX="$?";PS1="";local ec='\[\e[0m\]';local rc='\[\e[1;31m\]';local gc='\[\e[1;32m\]'
export PS1="[\u@\h \W $(branch)] $EX ";if [ $EX != 0 ];then PS1+="${rc}> ${ec}  ";else PS1+="${gc}> ${ec}  ";fi
}
files=$HOME/dotfiles
synclient TapButton1=1;synclient TapButton2=3;synclient TapButton3=2
branch () { git branch 2> /dev/null|sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
. $files/scripts/.commacd.bash
. $files/info/info
. $HOME/homex/hhighlighter/h.sh

