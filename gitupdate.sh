#!/bin/bash
cd;cd ~/dotfiles
git add .bashrc .Xresources .vimrc .xinitrc
git commit -m "gitupdate.sh dotfiles"
git push origin master
function gitRC () {
local RC="$?"
if [ $RC != 0 ]; then echo "Error.";
else echo "Completed.";
fi
}
