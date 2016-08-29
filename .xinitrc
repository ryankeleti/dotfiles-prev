#!/bin/sh 
# https://github.com/ryankeleti/dotfiles

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap
files=$HOME/dotfiles

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi
if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi
if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi
if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

xrdb -load $userresources
xrdb -merge $userresources
xrdb -merge $files/cconfig/colors/dex-ui.xr
setxkbmap -option compose:rctrl

#feh --bg-scale $files/cconfig/street.jpg &
feh --bg-fill $files/cconfig/black.png

#lal &
#compton &
#conky -c $HOME/.config/conky/conky.conf &
xterm &
sxhkd &
xscreensaver &
xfce4-power-manager &

exec bspwm
#exec openbox
#exec i3
#exec startxfce4
#exec herbstluftwm

