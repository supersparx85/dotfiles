#!/bin/bash
PATH=$PATH:~/Documents/dotfiles/exts
export BROWSER="firefox"
export EDITOR="nvim"
export TERMINAL="st"
QT_QPA_PLATFORMTHEME=""
QT_STYLE_OVERRIDE=""
[ -f /.bashrc ] && source ~/.bashrc
		if  [ "$(tty)" = "/dev/tty1" ]; then
				pgrep -x sxhkd || exec startx
fi
