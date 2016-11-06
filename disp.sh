#!/bin/sh

b="███"
clear
col(){
for FG in '    m' '   1m' ' 1;30m' '0;30m' ' 1;31m' '0;31m' ' 1;32m' \
          '0;32m' '1;33m' '0;33m' '1;34m' '0;34m' '1;35m' '0;35m' \
          '1;36m' '0;36m' '1;37m' '0;37m';
do
  echo -en "\033[$FG$b";
done
}
d=$'\033[1m'
t=$'\033[0m'
v=$'\033[7m'
cat<<EOF

    wvvvvvvv  /|__/|    |  PK $(pacman -Q|wc -l)
        I   /@,@   |    |  KN $(uname -r)
         | /_____   |   |  SH $SHELL
        J|/^ ^ ^ \  |   |  WM dwm
         |^ ^ ^ ^ |V|   |  FT terminus
          \m___m__|-|   |  $(col)

EOF

