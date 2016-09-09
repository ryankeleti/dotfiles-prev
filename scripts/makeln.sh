#!/bin/bash

dir=$HOME/dotfiles                
olddir=$HOME/bdotfiles
files=".bashrc .vimrc .Xresources .xinitrc"
scripts="clone.sh gitupdate.sh makeln.sh"

echo -n ":: creating $olddir"
mkdir -p $olddir
echo ":: done"

echo -n ":: changing directory to $dir"
cd $dir
echo ":: done"

for file in $files
do
  echo ":: moving any existing dotfiles from $HOME to $olddir"
  mv $HOME/$file $olddir
  echo ":: creating symlink to $file in $HOME"
  ln -s $dir/$file $HOME/$file
done

for file in $scripts
do
  echo ":: creating symlink to $file in $dir"
  ln -s $dir/scripts/$file $dir
done

ln -s $dir/scripts/clone.sh $HOME

