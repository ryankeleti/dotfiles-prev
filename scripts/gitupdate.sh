#!/bin/bash

function gitEX () {
local EX="$?"

  if [ $EX != 0 ]; then
    echo ":: error"
  else
    echo ":: done"
  fi
}

cd $HOME/dotfiles

files="*"
hfiles=".bashrc .Xresources .xinitrc .xscreensaver .vimrc .bmenu"

git add $files $hfiles
echo -e 'git commit -m "update `date`"'
git commit -m "update `date`"
git push origin master

gitEX

