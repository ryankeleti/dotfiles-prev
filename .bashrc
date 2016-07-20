# ~/.bashrc
# executed by bash(1) for non-login shells.

# vim: fdm=marker:noai:ts=4:sw=4
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)

# main bash config {{{

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

[ -z "$PS1" ] && return

export HISTFILESIZE=10000
export HISTSIZE=5000
shopt -s histappend
shopt -s cmdhist
HISTCONTROL=ignoredups
export HISTIGNORE="&:ls:[bf]g:exit"
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

#force_color_prompt=yes
if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    # We have color support; assume it's compliant with Ecma-48
    # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
    # a case would tend to support setf rather than setaf.)
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

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi
#export PS1="\e[1;32m[\u@\h \W]\$ \e[m "
parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

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

#PS1='\u@\h:\w\n\$ '
#PS1='┌─ \[\e[0;33m\]\u@\h:\[\e[0m\]\[\e[0;34m\]\w\[\e[0m\]\n└─ >> \$ '
# }}}

exitstatus () {
    if [[ $? == 0 ]]; then
        echo '<>'
    else
        echo '><'
    fi
}

connection () {

    PING=$'ping -c1 8.8.8.8'
    RVAL=$?
    if [[ $RVAL == 0 ]]; then
        echo -e "\nW:up\v"
    else
        echo -e "\nW:down\v"
    fi
        
    }

bashstart () {

    clear && printf "\e[3J"
    neofetch --stdout kernel uptime shell
    echo -e '\n'
    if [[ $PWD == /home/ryanku ]]; then
        echo -e "\nLogged in as $PWD"
    else 
        echo -e "\nnew phone who dis"
    fi
    connection

}


PS1='\[\e[0;31m\]\u@\h:\w\n\$ \[\e[0m\] $(exitstatus)  '

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
alias dud1="du -d1 -h . ort -h"
alias folders="find . -maxdepth 1 -type d -print | xargs du -sk | sort -rn"
alias diskspace="du -S | sort -n -r |more"
#alias wm="sudo wifi-menu -o wlp1s0"
#alias xrdbm="xrdb -merge ~/.Xresources"
#alias pac="sudo pacman -S"

# vim aliases
alias v="vim"
alias vi="vim"
#alias vbash="vim ~/.bashrc"
#alias vrc="vim ~/.vimrc"
#alias xres="vim ~/.Xresources"
#alias i3c="vim ~/.config/i3/config"

# scripts / other
alias 256p="perl ~/256colors2.pl"
alias sf="screenfetch"
alias nf="neofetch"
alias nfdd="neofetch --disable distro"
alias woman="man -w"
# }}}

