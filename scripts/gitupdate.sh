#!/bin/bash

cd;cd ~/dotfiles
files=".bashrc .vimrc .Xresources .xinitrc ._bashrc"
sdir="scripts/ pgrm/ .cconfig/"

echo -en ":: ( $sdir $files ) -> auto included\n"
echo -en ":: Enter other files: "
read efiles

git add $files $sdir $efiles
git commit -m "gitupdate.sh >> dotfiles"
git push origin master

function gitRC () {
local RC="$?"
if [ $RC != 0 ]; then echo "Error.";
else echo ":: Done";
fi
}
gitRC

