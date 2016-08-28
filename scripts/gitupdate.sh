#!/bin/bash

function gitEX () {
local EX="$?"
if [ $EX != 0 ]; then echo ":: Error";
else echo ":: Done";fi
}

cd;cd $HOME/dotfiles
files=".bashrc .vimrc .Xresources .xinitrc"
sdir="scripts/ pgrm/ .cconfig/"

echo -en ":: ( $sdir $files ) -> auto included\n"
echo -en ":: Enter other files: "
read efiles

git add $files $sdir $efiles
git commit -m "gitupdate.sh >> dotfiles"
git push origin master

gitEX

