#!/bin/bash
PATH=$PATH:~/exts

QT_QPA_PLATFORMTHEME=""
QT_STYLE_OVERRIDE=""

[ -f /.bashrc ] && source ~/.bashrc
if  [ "$(tty)" = "/dev/tty1" ]; then
		pgrep sxhkd | exec startx
fi
