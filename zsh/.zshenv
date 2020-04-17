#!/bin/zsh
export GTK_RC_FILES="$HOME/.config/gtk-1.0/gtkrc"
export GTK2_RC_FILES="$HOME.config/gtk-2.0/gtkrc2"
export WGETRC="$HOME/.config/wgetrc"
export ZDOTDIR="$HOME/.config/zsh"
export PATH=~/exts:$PATH


export ZDOTDIR="$HOME/.config/zsh"
export PATH=~/exts:$PATH

WM="$(echo -e "bspwm\ndwm\nawesome" | fzf)"

[ -f /.bashrc ] && source ~/.bashrc
if  [ "$(tty)" = "/dev/tty1" ]; then
		exec startx
fi