#!/bin/bash

cdir=$HOME/.config
ccdir=$HOME/dotfiles/cconfig
i3=$cdir/i3/config
i3status=$cdir/i3status/config
conky=$cdir/conky/conky.conf 
bspwm=$cdir/bspwm/bspwmrc 
sxhkd=$cdir/sxhkd/sxhkdrc
dwm=$HOME/dwm/config.h 
st=$HOME/st/config.h 

echo "cp $i3 $ccdir/i3"
cp $i3 $ccdir/i3

echo "cp $i3status $ccdir/i3status"
cp $i3status $ccdir/i3status

echo "cp $conky $ccdir/conky"
cp $conky $ccdir/conky

echo "cp $bspwm $ccdir/bspwm"
cp $bspwm $ccdir/bspwm

echo "cp $sxhkd $ccdir/sxhkd"
cp $sxhkd $ccdir/sxhkd

echo "cp $dwm $ccdir/dwm"
cp $dwm $ccdir/dwm

echo "cp $st $ccdir/st"
cp $st $ccdir/st

echo $_ $?
echo

