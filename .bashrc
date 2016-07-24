# ~/.bashrc                         
# executed by bash(1) for non-login shells.

[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '
shopt -s histappend
shopt -s cmdhist
shopt -s checkwinsize
shopt -s autocd
HISTFILE=1000
HISTFILESIZE=2000
HISTCONTROL="erasedups:ignoreboth"       
export HISTIGNORE="&:ls:[bf]g:exit:qq:la:history:dir:i3c:wm:xrdbm:cdp"
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
export PAGER="/usr/bin/most -s"
# scripts {{{                              
export PROMPT_COMMAND=lastcmd
function lastcmd () {
  local EXIT="$?"
  PS1=""
  local ecol='\[\e[0m\]'
  local rcol='\[\e[0;31m\]'
  local gcol='\[\e[0;32m\]'
  local ycol='\[\e[0;33m\]'
  local bcol='\[\e[0;34m\]'
  local pcol='\[\e[0;35m\]'
  export PS1="${ecol}${bcol}\n\u${ecol} | ${pcol}\h${ecol} (${ycol}\w${ecol}) [$EXIT]\n";
  if [ $EXIT != 0 ]; then
    PS1+="${rcol}\$ >${ecol}  "
  else
    PS1+="${gcol}\$ >${ecol}  "
  fi
}
function pcolor () {
  T='   '
  echo -e "\n                 40m     41m     42m     43m\
     44m     45m     46m     47m";
  for FGs in '    m' '   1m' '  30m' '1;30m' '  31m' '1;31m' '  32m' \
             '1;32m' '  33m' '1;33m' '  34m' '1;34m' '  35m' '1;35m' \
             '  36m' '1;36m' '  37m' '1;37m';
    do FG=${FGs// /}
    echo -en " $FGs \033[$FG  $T  "
    for BG in 40m 41m 42m 43m 44m 45m 46m 47m;
      do echo -en "$EINS \033[$FG\033[$BG  $T  \033[0m";
    done
    echo;
  done
  echo
}
padset () {
  synclient TapButton1=1;synclient TapButton2=3;synclient TapButton3=2;
}
parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
connection () {
    ping -c1 8.8.8.8 2>&1 >/dev/null
    if [[ $? == 0 ]]; then
        echo -e "\e[0;32mW:up\e[0m\v"
    else
        echo -e "\e[0;31mW:down\e[0m\v"
    fi
}
bashstart () {
    clear && printf "\e[3J"
    echo -e '\e[0;36m'$(uname -r)'\e[0m''  |  ''\e[0;35m'$SHELL'\e[0m''  |  '$PWD'  |  '$(connection)
}
# }}}                                      
alias cdp='cd Desktop/pgrm'
alias dir='dir --color=auto'
alias ls='ls --color=auto'
alias la='ls -AF'
alias qq="exit"
alias dud1="du -d1 -h"
alias diskspace="du -S | sort -n -r |more"
alias wm="sudo wifi-menu -o wlp1s0"
alias xrdbm="xrdb -merge ~/.Xresources"
alias rm="rm -i"
alias v="vim"
alias vi="vim"
alias i3c="vim ~/.config/i3/config"

bashstart
bind -x '"\C-b": clear && printf "\e[3J"';

