set nocompatible
filetype off
filetype plugin indent on
syntax on
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set number
set ttyfast

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" github repos
Bundle 'gmarik/vundle'
Bundle 'chriskempson/vim-tomorrow-theme'

" vim-script repos
Bundle 'TTCoach'

" Make j and k do the right thing on wrapped lines
nmap j gj
nmap k gk

" Configure searching
set hlsearch
set incsearch
set ignorecase
set smartcase

colorscheme Tomorrow-Night-Bright
