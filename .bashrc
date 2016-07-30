# ~/.bashrc -- executed by bash(1) for non-login shells.
[[ $- != *i* ]] && return; PS1='[\u@\h \W]\$ '
shopt -s histappend;shopt -s cmdhist;shopt -s checkwinsize;shopt -s autocd;
HISTFILE=1000;HISTFILESIZE=2000;HISTCONTROL="erasedups:ignoreboth";       
export HISTIGNORE="&:ls:[bf]g:exit:qq:la:history:dir:i3c:wm:xrdbm:cdp";
export LESS_TERMCAP_mb=$'\E[01;31m';export LESS_TERMCAP_md=$'\E[01;31m';
export LESS_TERMCAP_me=$'\E[0m';export LESS_TERMCAP_se=$'\E[0m';
export LESS_TERMCAP_so=$'\E[01;44;33m';export LESS_TERMCAP_ue=$'\E[0m';
export LESS_TERMCAP_us=$'\E[01;32m';export PAGER="/usr/bin/most -s";
alias cdp="cd ~/pgrm";alias qq="exit";alias rm="rm -i";alias mv="mv -i";
alias dir='dir --color=auto';alias ls='ls --color=auto';alias la='ls -AF';
alias dud1="du -d1 -h|sort -hr";alias diskspace="du -S | sort -n -r |more";
alias wm="sudo wifi-menu -o wlp1s0";alias xrdbm="xrdb -merge ~/.Xresources";
alias v="vim";alias vi="vim";alias i3c="vim ~/.config/i3/config";
bind -x '"\C-b": clear && printf "\e[3J"';export PROMPT_COMMAND=lastcmd;
function lastcmd () { 
local EXIT="$?"; PS1="";
local ecol='\[\e[0m\]';local rcol='\[\e[0;31m\]';local gcol='\[\e[0;32m\]';
local ycol='\[\e[0;33m\]';local bcol='\[\e[0;34m\]';local pcol='\[\e[0;35m\]';
export PS1="${ecol}${bcol}\n\u${ecol} | ${pcol}\h${ecol} (${ycol}\w${ecol}) [$EXIT]\n";
if [ $EXIT != 0 ]; then PS1+="${rcol}\$ >${ecol}  ";
else PS1+="${gcol}\$ >${ecol}  "; 
fi
}
padset () { 
synclient TapButton1=1;synclient TapButton2=3;synclient TapButton3=2;
}
parse_git_branch () { 
git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
connection () {
ping -c1 8.8.8.8 2>&1 >/dev/null;if [[ $? == 0 ]]; then echo -e "\e[0;32mW:up\e[0m\v";else echo -e "\e[0;31mW:down\e[0m\v";
fi
}
bashstart () {
clear && printf "\e[3J";echo -e '\e[0;36m'$(uname -r)'\e[0m''  |  ''\e[0;35m'$SHELL'\e[0m' #'  |  '$PWD'  |  '$(connection);
}
bashstart;

