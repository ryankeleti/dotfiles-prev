#!/bin/bash

cdir=$HOME/.config
ccdir=$HOME/dotfiles/cconfig
bspwm=$cdir/bspwm/bspwmrc 
sxhkd=$cdir/sxhkd/sxhkdrc
dwm=$HOME/dwm/config.h 

echo "cp $bspwm $ccdir/bspwm"
cp $bspwm $ccdir/bspwm

echo "cp $sxhkd $ccdir/sxhkd"
cp $sxhkd $ccdir/sxhkd

echo "cp $dwm $ccdir/dwm"
cp $dwm $ccdir/dwm

echo "cp $st $ccdir/st"

echo $_ $?
echo

