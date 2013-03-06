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

" Quick switching between buffers
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>

" disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

colorscheme Tomorrow-Night-Bright
