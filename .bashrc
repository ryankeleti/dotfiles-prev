# ~/.bashrc  --  https://github.com/ryankeleti/dotfiles

[[ $- != *i* ]] && return; shopt -s histappend cmdhist checkwinsize autocd
PS1='[\u@\h \W]\$ '
HISTFILE=; HISTFILESIZE=; HISTCONTROL="erasedups:ignoreboth"; unset HISTFILE
export PAGER='/usr/bin/less'; export SUDO_EDITOR='/usr/bin/vim'; export PROMPT_COMMAND=lcmd
bind -x '"\C-b": echo -ne "\033c" '
bind -x '"\C-n": clear && printf "\033[3J"'

synclient TapButton1=1;synclient TapButton2=3;synclient TapButton3=2

alias cdd='cd ~/dotfiles';alias qq='exit';alias rm='rm -i';alias mv='mv -i';alias v="vim"
alias ls='ls --color=auto';alias la='ls -AF';alias lla='ls -Al';alias wm='sudo wifi-menu -o wlp1s0'
alias dud1='du -d1 -h|sort -hr';alias diskspace='du -S|sort -nr|more';alias tl="find . -print|sed 's;[^/]*/;|__;g;s;__|; |;g'"

branch () { git branch 2> /dev/null|sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/';}

lcmd () {
local ex="$?"; PS1=""; local ec='\[\033[0m\]'; local rc='\[\033[1;31m\]'; local gc='\[\033[1;32m\]'
export PS1="\[\033[0;37m\]§\W "

  if [ $ex != 0 ]; then
    PS1+="${rc} ƒ   ${ec}"
    if [ $ex == 127 ]; then
      printf "%${COLUMNS}s\n" "∄"
    else 
      printf "%${COLUMNS}s\n" "∵ $ex"
    fi
  else
    PS1+="${gc} ƒ   ${ec}"
    printf "%${COLUMNS}s\n" "¬ $ex "
  fi
}

files=$HOME/dotfiles
. $files/scripts/.commacd.bash
. $files/info/infobar

xrdb -load $HOME/.Xresources
xrdb -merge $HOME/.Xresources

