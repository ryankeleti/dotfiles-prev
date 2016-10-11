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
alias lla='ls -Al'
alias dud1='du -d1 -h|sort -hr'
alias diskspace='du -S|sort -nr|more'
alias wm='sudo wifi-menu -o wlp1s0'
alias rme='rm -i `find . -perm /111 -type f`'
alias tl="find . -print|sed 's;[^/]*/;|__;g;s;__|; |;g'"
alias redwm='cd ~/dwm;sudo make clean install'
alias xrdbm='xrdb ~/.Xresources'

branch () { git branch 2> /dev/null|sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/';}

#export PROMPT_COMMAND=
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
#PS1='\W λ  '
#local fg=("\[\033[0;30m\]" "\[\033[0;31m\]" "\[\033[0;32m\]" "\[\033[0;33m\]"
#            "\[\033[0;34m\]" "\[\033[0;35m\]" "\[\033[0;36m\]" "\[\033[0;37m\]"
#            "\[\033[1;30m\]" "\[\033[1;31m\]" "\[\033[1;32m\]" "\[\033[1;33m\]"
#            "\[\033[1;34m\]" "\[\033[1;35m\]" "\[\033[1;36m\]" "\[\033[1;37m\]")
#local nofg="\[\033[0m\]"

bar () {
  fgc=("\033[0;30m" "\033[0;31m" "\033[0;32m" "\033[0;33m"
            "\033[0;34m" "\033[0;35m" "\033[0;36m" "\033[0;37m"
            "\033[1;30m" "\033[1;31m" "\033[1;32m" "\033[1;33m"
            "\033[1;34m" "\033[1;35m" "\033[1;36m" "\033[1;37m")
  nofg="\033[0m"
  PS1=''
  function prompt {
  local ex="$?"
  ret=$(if [[ "$ex" != "0" ]]; then echo "$ex "; fi)
  len=$(echo -e "¬ $USER@$HOSTNAME | `pwd` | `date +'%a %b %d %H:%M'`" | wc -c)
  spc=$(printf "%$((COLUMNS-len))s\n")
  #echo -e "¬ ${fg[8]}$USER@${fg[5]}$HOSTNAME${nofg} | ${fg[7]}`pwd`${nofg} |$spc${fg[12]}`date +'%a %b %d %H:%M'`${nofg}\033[K\
  #  \033[u\033[1A\033[1B "
  echo -en "\033[s\033[H\033[K"
  echo -e "¬ ${fgc[8]}$USER${nofg}@${fgc[5]}$HOSTNAME${nofg} | ${fgc[7]}`pwd`${nofg} | $spc${fgc[12]}`date +'%a %b %d %H:%M'`${nofg}"
  echo -en "\033[K \033[u\033[1A\033[1B "
  echo
  }
  export PROMPT_COMMAND=prompt
  export PS1=" ${PS1}${fgc[11]}──────  ${nofg}"
}

bar
#PS1="${fg[14]}$(hostname|cut -b-2) "

files=$HOME/dotfiles
. $files/scripts/.commacd.bash
#. $files/scripts/.bashbar
#. $files/info/infobar

#xrdb -load $HOME/.Xresources
#xrdb -merge $HOME/.Xresources
#complete -W "\`grep -oE '^[a-zA-Z0-9_-]+:([^=]|$)' Makefile | sed 's/[^a-zA-Z0-9_-]*$//'\`" make
cd

