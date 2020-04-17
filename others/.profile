#!/bin/bash
PATH=$PATH:~/exts
export BROWSER="chrome"
export EDITOR="nvim"
export TERMINAL="st"
export WALLPAPER="nitrogen"
export IMAGE="sxiv"
export VIDEO="mpv"
export AUDIOC="alsa"
export WM=""





QT_QPA_PLATFORMTHEME=""
QT_STYLE_OVERRIDE=""

WM="$(echo -e "bspwm\ndwm\nawesome" | fzf)"

[ -f /.bashrc ] && source ~/.bashrc
if  [ "$(tty)" = "/dev/tty1" ]; then
		exec startx
fi
