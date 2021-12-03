#!/bin/bash

cat <<EOF > ~/.gitconfig
[user]
        email = you@example.com
        name = Your Name
[core]
        editor = vim -c \"set fenc=utf-8\"
[credential]
        helper = store
EOF


cd
mkdir -p ~/.vim/colors; cd ~/.vim; \
	git clone https://github.com/tomasr/molokai; \
	cp -r molokai/colors/molokai.vim ./colors/
cd

cat <<EOF > ~/.vimrc
set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd
set number

nnoremap j gj
nnoremap k gk
syntax enable

set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

syntax on
colorscheme molokai
set t_Co=256

set smartindent
set expandtab
set tabstop=4
set shiftwidth=4

set paste

EOF
