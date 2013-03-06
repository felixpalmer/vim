" Bootstrap by installing Vundle, if it isn't already installed
let vundle_bootstrap=0
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle..."
    let vundle_bootstrap=1
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
endif

" Start up Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Plugins to install
" github repos
Bundle 'gmarik/vundle'
Bundle 'chriskempson/vim-tomorrow-theme'

" vim-script repos
Bundle 'TTCoach'
Bundle 'Syntastic'

" Only install bundles on bootstrap
if vundle_bootstrap == 1
    :BundleInstall
endif

" Sane defaults
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

" Disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

colorscheme Tomorrow-Night-Bright
