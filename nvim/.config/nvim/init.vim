let mapleader="+"
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
Plug 'triglav/vim-visual-increment'
Plug 'ap/vim-css-color'
Plug 'kovetskiy/sxhkd-vim'
Plug 'junegunn/goyo.vim'
Plug 'dracula/vim'
call plug#end()

color dracula

set bg=dark
set clipboard+=unnamedplus
set clipboard=unnamed
set complete+=k
set dictionary+=/home/dgu/dotfiles/nvim/dics/words.txt
set encoding=utf-8
set expandtab
set go=a
set hlsearch
set incsearch
set lazyredraw
set mouse=a
set noexpandtab
set nohlsearch
set nomore
set noshowmode
set nrformats=alpha
set relativenumber
set showmatch
set sidescroll=1
set softtabstop=4
set splitbelow splitright
set synmaxcol=500
set tabstop=4
set termguicolors
set wildmenu
set wildmode=longest,list,full
set spell! spelllang=en_us

hi CursorLineNr ctermfg=Green
filetype indent on
syntax on
hi QuickFixLine term=reverse ctermbg=52

map <leader>e :silent! !chmod 777 %<CR>
map <leader>w :w!<CR>
map <leader>q :q!<CR>
vnoremap <C-c> "*y :let @+=@*<CR>
map <C-v> "+P
map <Leader>n :noh<CR>
imap ;null >/dev/null 2>&1
imap ;ssh #!/bin/sh
imap ;border -----------------------------------------------------------------------------
inoremap <F2> <C-X><C-K>
map <Leader>c 1z=
map <Leader>o z=
map t :setlocal spell! spelllang=en_us<CR>
" Enable autocompletion:
set wildmode=longest,list,full
" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

autocmd BufWritePost *bspwmrc :silent! !bspc wm -r &
autocmd BufWritePost *dunstrc :silent! !killall dunst &
autocmd BufWritePost *sxhkdrc :silent! !pkill -USR1 -x sxhkd &
autocmd BufWritePost *en.utf-8.add :mkspell! %
autocmd BufWritePost *.Xresources,*Xdefaults !xrdb ~/.Xresources
autocmd BufWritePre * $put _ | $;?\(^\s*$\)\@!?+1,$d
autocmd BufWritePre * :silent! %s/\s\+$//e
