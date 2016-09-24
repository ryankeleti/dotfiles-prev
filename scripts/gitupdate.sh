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

echo -e ":: ( $files $hfiles\n`ls`\n) »» auto included"
echo -en ":: enter other files    "
read efiles

git add $files $sdir $efiles
git commit -m "gitup.sh >> dotfiles"
git push origin master

gitEX

