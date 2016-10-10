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
hfiles=".bashrc .Xresources .xinitrc .vimrc .bmenu"

git add `find .`
git add $files $hfiles
git commit -m "update `date`"
git push origin master

gitEX

