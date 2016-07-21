# ~/.bashrc
# executed by bash(1) for non-login shells.

# main bash config {{{
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

[ -z "$PS1" ] && return

shopt -s histappend
shopt -s cmdhist
shopt -s checkwinsize
HISTCONTROL=ignoredups
export HISTIGNORE="&:ls:[bf]g:exit"
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
export PAGER="/usr/bin/most -s"
export RTY_EDITOR=vim
export BROWSER=w3m
export RTY_URLVIEWER=urlview

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    color_prompt=yes
    else
    color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
    fi
unset color_prompt force_color_prompt

case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi
# }}}
# scripts {{{                              
parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

exitstatus () {
    if [[ $? == 0 ]]; then
        echo '  '
    else
        echo ' !'
    fi
}

connection () {
    ping -c1 8.8.8.8 2>&1 >/dev/null
    RVAL=$?
    if [[ $RVAL == 0 ]]; then
        echo -e "W:up\v"
    else
        echo -e "W:down\v"
    fi
}

bashstart () {
    clear && printf "\e[3J"
    echo -e $(uname -r)'  |  '$SHELL'  |  '$(connection)
    if [[ $PWD == /home/ryanku ]]; then
        echo -e "\nLogged in to \e[0;32m$PWD\e[0m\n"
    else 
        echo -e '\[\e[0;31m\]!dir\[\e[0m\] '
    fi
}

vimthemes () {
    cd
    cd /usr/share/vim/vim74/colors/
    echo -e "\v"
    ls *.vim
    echo -e "\v"
    cd
}
# }}}                                      

pce='\[\e[0m\]'      # esc
pc0='\[\e[0;30m\]'   # black/grey
pc1='\[\e[0;31m\]'   # red
pc2='\[\e[0;32m\]'   # green
pc3='\[\e[0;33m\]'   # yellow
pc4='\[\e[0;34m\]'   # blue
pc5='\[\e[0;35m\]'   # pink
pc6='\[\e[0;36m\]'   # cyan
pc7='\[\e[0;37m\]'   # white

#PS1="\n\u@\h (\w) \$  "
#PS1='\u@\h:\w\n\$ '
#export PS1="\e[1;32m[\u@\h \W]\$ \e[m "
PS1="\[\e[0;32m\]\n\u\[\e[0m\] ";
PS1+="| \[\e[0;34m\]\h\[\e[0m\] ";
PS1+="(\[\e[0;33m\]\w\[\e[0m\])";
PS1+="\n\$$(exitstatus)";
export PS1;


bashstart
#source ~/.bash-powerline.sh
source "$HOME/.homesick/repos/homeshick/homeshick.sh"
source "$HOME/.homesick/repos/homeshick/completions/homeshick-completion.bash"
bind -x '"\C-b": clear && printf "\e[3J"';

# ----- aliases ----- {{{
# cd aliases
alias cdp='cd Desktop/pgrm'
alias cdo="cd Downloads"
alias vim74="cd /usr/share/vim/vim74/"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# shortcuts
alias qq="exit"
alias :q="exit"
alias dud1="du -d1 -h . ort -h"
alias folders="find . -maxdepth 1 -type d -print | xargs du -sk | sort -rn"
alias diskspace="du -S | sort -n -r |more"
alias wm="sudo wifi-menu -o wlp1s0"
alias xrdbm="xrdb -merge ~/.Xresources"
alias pac="sudo pacman -S"

# vim aliases
alias v="vim"
alias vi="vim"
alias vbash="vim ~/.bashrc"
alias vrc="vim ~/.vimrc"
alias xres="vim ~/.Xresources"
alias i3c="vim ~/.config/i3/config"

# scripts / other
alias 256p="perl ~/256colors2.pl"
alias sf="screenfetch"
alias nf="neofetch"
alias nfdd="neofetch --disable distro"
alias woman="man -w"
alias rm="rm -i"
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
# }}}

