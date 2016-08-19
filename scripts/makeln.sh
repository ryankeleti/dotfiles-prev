#!/bin/bash

dir=~/dotfiles                
olddir=~/bdotfiles
files=".bashrc .vimrc .Xresources .xinitrc"
scripts="clone.sh gitupdate.sh makeln.sh"

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

for file in $scripts; do
  echo "Creating symlink to $file in $dir."
  ln -s $dir/scripts/$file $dir
done

ln -s $dir/scripts/clone.sh ~

