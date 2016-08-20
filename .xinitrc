#!/bin/sh 
# -- @ryankeleti

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

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
setxkbmap -option compose:rctrl
feh --bg-scale ~/Pictures-Local/irontexture.jpg &
xfce4-power-manager &
xterm &
conky -c $HOME/.config/conky/conky.conf &
sxhkd &
xscreensaver &
exec bspwm
#exec i3
#exec startxfce4
#exec herbstluftwm

