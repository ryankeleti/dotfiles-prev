#!/bin/sh

if [[ $TERM == "rxvt"* ]]; then 
  show (){
  cat $HOME/.Xresources|grep color[0-9]|tr -d ' '\
    |grep color$1|head -n1|cut -d: -f2
  }
fi
f=3 b=4
for i in f b; do
  for j in {0..7}; do
    printf -v $i$j %b "\033[${!i}${j}m"
  done
done

cat << EOF

    wvvvvvvv  /|__/|    |  PK $(pacman -Q|wc -l)
        I   /@,@   |    |  KN $(uname -r)
         | /_____   |   |  SH $SHELL
        J|/^ ^ ^ \  |   |  WM dwm
         |^ ^ ^ ^ |V|   |  FT terminus
          \m___m__|-|   |

EOF


#d=$'\033[1m'
#t=$'\033[0m'
#v=$'\033[7m'
