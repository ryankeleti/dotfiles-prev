#!/bin/bash

cdir=$HOME/.config
ccdir=$HOME/dotfiles/cconfig/
files="$cdir/i3/config $cdir/conky/conky.conf $cdir/bspwm/bspwmrc $cdir/sxhkd/sxhkdrc"

for file in $files; do
  echo "cp $file to $ccdir"
  cp $file $ccdir
done

