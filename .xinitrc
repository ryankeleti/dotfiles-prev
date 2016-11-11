#!/bin/sh

#==========================================#
#                                          #
# .xinitrc                                 #
#                                          #
#  https://github.com/ryankeleti/dotfiles  #
#                                          #
#==========================================#

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

#lal
#conky -c $HOME/.config/conky/conky.conf

synclient TapButton1=1
synclient TapButton2=3
synclient TapButton3=2

xrdb -load $userresources
xrdb -merge $userresources
setxkbmap -option compose:rctrl
setxkbmap -option grp:alt_shift_toggle us,apl

urxvt &
sxhkd &
xmobar &
feh --bg-scale $HOME/images/earth-horizon.jpg &

#while xsetroot -name "`date` `uptime | sed 's/.*,//'`"
while xsetroot -name "`acpi`"
do
  sleep 1
done &
exec dwm

#exec openbox
#exec bspwm
#exec i3
#exec herbstluftwm
