stty -ixon
shopt -s autocd
shopt -s cdspell
shopt -s checkwinsize
shopt -s dirspell
shopt -s expand_aliases
PS1="\T \[$(tput sgr0)\]\[\033[38;5;10m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]>\[$(tput sgr0)\]"
force_color_prompt=yes
HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
alias ls="ls -a --color=auto --group-directories-first"
alias grep='grep --color=auto'
alias feh="feh --scale-down --auto-zoom"
alias h="cdf ~"
alias mkdir="mkdir -p"
alias sdl="shred -vfzu -n 24"
alias sl="ls"
alias psm="sudo ps_mem"
alias ffmpeg="ffmpeg -hide_banner"
alias detox="detox -vrs lower --remove-trailing "
alias gp="git push origin master"
alias c='cdf "$(fd --type d . /home/dgu | fzf)"'
alias ddf='fdupes . -rdN'
alias gm='git add . && git commit -m '
alias hisc="history -c"
alias unlock="git config credential.helper store"
alias def="find . -type d -empty -print -delete"
alias rml="sudo reflector --latest 5 --sort rate --save /etc/pacman.d/mirrorlist && sudo pacman -Syyu"
alias cop="sudo rm config.h; rm *.orig; rm *.rej; sudo make clean"
alias dfsn="find . -name '*([0-9]).*' -exec rm {} -v \;"
alias nowallpaper="xsetroot -solid '#282828'"
alias ups="sudo pacman -Syu --overwrite='*'"
alias wall="feh --bg-fill"
alias unlockupdates="sudo rm -r /var/lib/pacman/db.lck"

function mem(){
		free -h | awk '/Mem/ {print "Mem:" $3 "/" $2}'
}

function w(){
		vifm "$(pwd)"
}

function ga(){
		cd ~/Documents/dotfiles/
		git status .
}

function vf(){
	fd --type f . '/home/dgu' | fzf | xargs -r -I {} ~/Documents/dotfiles/exts/v "{}"
}

function cdf(){
		builtin cd "$1"; ls --color=auto --group-directories-first;
}
function cleanlinks(){
	find . -type l -xtype l | xargs -r -I {} rm "{}"
}

function ctrash(){
			trash-put ~/.local/share/vifm/Trash >/dev/null 2>&1;trash-empty >/dev/null 2>&1
		    echo "The trash has been thrown out"
	}
function ees(){
	find ~/Documents/dotfiles/exts -type f |fzf --preview 'head -50 {}' | xargs -r nvim
}

function ee(){
	find ~/Documents/dotfiles -type f | grep -v ".git\|.exts\|.png\|Makefile\|util.h\|LICENSE\|.mk\|.1\|.info\|util.c" | fzf --preview 'head -50 {}' | xargs -r -I {} nvim "{}"
}

function setwallpaper(){
		convert "$1" ~/.config/wall.jpg && feh --bg-fill ~/.config/wall.jpg
}
function cleangit(){
	git checkout --orphan temp_branch;git add -A; git commit -am "Commit history deleted"; git branch -D master; git branch -m master; git push -f origin master
}
function createwallpape(){
		convert -size 1920x1080 "xc:#282828" -gravity center -pointsize 93 -weight 700 -fill "#bbbbbb" -annotate 0 "$(echo "Type in the message" | dmenu -p -i -l 5)" ~/.config/wall.jpg && feh --bg-scale ~/.config/wall.jpg
}

function maid(){
		sudo pacman -Syu --overwrite='*'
		echo " Checking for updated packages" && yay
		echo " Checking for pip updates and installing them " && sudo pip install --upgrade pip
		sudo pip list --outdated | awk 'NR >2 { print $1}' | xargs sudo pip install --upgrade -
		echo " Looking for unnecessary packages" && sudo pacman -Rsn $(pacman -Qtdq)
		echo " Cleaning cache and history" && sudo pacman -Sc --noconfirm >/dev/null 2>&1
		trash-put ~/.zsh_history >/dev/null 2>&1
		echo "$(find ~ -type d -empty -print -delete | wc -l) empty directories have been deleted."
		echo " Taking the trash out" && trash-empty
}
