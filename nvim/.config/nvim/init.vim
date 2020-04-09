let mapleader="+"
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
Plug 'triglav/vim-visual-increment'
Plug 'ap/vim-css-color'
call plug#end()

set bg=light
set clipboard=unnamed
set encoding=utf-8
set expandtab
set hlsearch
set incsearch
set lazyredraw
set noexpandtab
set nomore
set nrformats=alpha
set relativenumber
set showmatch
set softtabstop=4
set splitbelow splitright
set tabstop=4
set wildmenu
set wildmode=longest,list,full
set noshowmode
set synmaxcol=500
set sidescroll=1
hi CursorLineNr ctermfg=Green
filetype indent on
syntax on

map <leader>e :silent! !chmod 777 %<CR>
map <leader>w :w!<CR>
map <leader>q :q!<CR>
map <Leader>n :noh<CR>
imap ;null >/dev/null 2>&1
imap ;ssh #!/bin/sh
autocmd BufWritePost *bspwmrc :silent! !bspc wm -r &
autocmd BufWritePost *dunstrc :silent! !killall dunst &
autocmd BufWritePost *sxhkdrc :silent! !pkill -USR1 -x sxhkd &
autocmd BufWritePost *.Xresources,*Xdefaults !xrdb ~/.Xresources
autocmd BufWritePre * $put _ | $;?\(^\s*$\)\@!?+1,$d
autocmd BufWritePre * :silent! %s/\s\+$//e
