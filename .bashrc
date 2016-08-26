# ~/.bashrc  --  https://github.com/ryankeleti/dotfiles
[[ $- != *i* ]] && return; PS1='[\u@\h \W]\$ ';shopt -s histappend cmdhist checkwinsize autocd
HISTFILE=;HISTFILESIZE=;HISTCONTROL="erasedups:ignoreboth";unset HISTFILE
export PAGER='/usr/bin/less';export SUDO_EDITOR='/usr/bin/vim';export PROMPT_COMMAND=lastcmd
alias cdd='cd ~/dotfiles';alias qq='exit';alias rm='rm -i';alias mv='mv -i';alias dir='dir --color=auto';alias v='vim';alias vi='vim';alias cdc='cd ~/.config'
alias ls='ls --color=auto';alias la='ls -AF';alias lla='ls -AFl';alias cla='clear && ls -AF';alias lf='ls -F'
alias dud1='du -d1 -h|sort -hr';alias diskspace='du -S|sort -n -r|more';alias wm='sudo wifi-menu -o wlp1s0';alias xrdbm='xrdb -merge ~/.Xresources';alias tl="find . -print|sed 's;[^/]*/;|__;g;s;__|; |;g'"
bind -x '"\C-b": clear && printf "\e[3J"'
function lastcmd () { local EX="$?";PS1="";local ec='\[\e[0m\]';local rc='\[\e[1;31m\]';local gc='\[\e[1;32m\]'
export PS1="[\u@\h \W $(branch)] $EX ";if [ $EX != 0 ];then PS1+="${rc}>> ${ec}  ";else PS1+="${gc}>> ${ec}  ";fi
}
files=~/dotfiles
synclient TapButton1=1;synclient TapButton2=3;synclient TapButton3=2
branch () { git branch 2> /dev/null|sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
connection () { ping -c1 8.8.8.8 2>&1 >/dev/null;if [[ $? == 0 ]];then echo W:up;else echo W:down;fi
}
. $files/scripts/.commacd.bash

