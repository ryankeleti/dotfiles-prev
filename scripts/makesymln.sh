#!/bin/bash
# .make.sh
#  creates symlink from ~ to ~/dotfiles

dir=~/dotfiles                
olddir=~/bdotfiles
files=".bashrc .vimrc .Xresources .xinitrc ._bashrc"

echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

for file in $files; do
  echo "Moving any existing dotfiles from ~ to $olddir"
  mv ~/$file ~/bdotfiles/
  echo "Creating symlink to $file in home directory."
  ln -s $dir/$file ~/$file
done


