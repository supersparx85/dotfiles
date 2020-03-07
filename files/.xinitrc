#!/bin/sh
source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh
source /etc/X11/xinit/xinitrc.d/80-appmenu-gtk-module
source /etc/X11/xinit/xinitrc.d/40-libcanberra-gtk-module.sh
xrdb -merge $HOME/.Xresources
xmodmap $HOME/.Xmodmap
setxkbmap -layout br &
xsetroot -cursor_name arrow &
numlockx on &
feh --bg-fill ~/.config/wall.jpg &
#xcompmgr &
polybar -r bar &
sxhkd &
qjackctl &
#megasync &
bspwm
