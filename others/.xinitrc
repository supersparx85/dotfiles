#!/bin/sh
source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh
source /etc/X11/xinit/xinitrc.d/80-appmenu-gtk-module
source /etc/X11/xinit/xinitrc.d/40-libcanberra-gtk-module.sh
xrdb -merge $HOME/.Xresources
xmodmap $HOME/.Xmodmap
setxkbmap -layout br &
xsetroot -cursor_name arrow &
numlockx on &
qjackctl &
~/exts/setbg
megasync &

dwmblocks &

[ $WM == "bspwm" ] && bspwm
[ $WM == "dwm" ] && while :; do ssh-agent dwm; done
