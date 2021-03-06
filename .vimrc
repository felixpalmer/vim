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
Bundle 'kien/ctrlp.vim'
Bundle 'gmarik/vundle'
Bundle 'airblade/vim-gitgutter'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'tmhedberg/SimpylFold'
"Requires custom vim build, see https://github.com/Valloric/YouCompleteMe
Bundle 'Valloric/YouCompleteMe'
Bundle 'plasticboy/vim-markdown'
Bundle 'file:///Users/felix/git/vimux'
"Requires v8 to be installed , see https://github.com/joestelmach/lint.vim
Bundle 'joestelmach/lint.vim'
Bundle 'vim-scripts/glsl.vim'
Bundle 'zhaocai/GoldenView.Vim'
Bundle 'kchmck/vim-coffee-script'

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
nmap <C-m> :bprev<CR>

" Disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Folding (remap to space)
set foldmethod=indent
set foldlevel=20
nnoremap <Space> za
vnoremap <Space> za

" Highlight trailing whitespace
match Todo /\s\+$/

" Plugin config
" vim-tomorrow-theme
" colorscheme Tomorrow-Night-Bright
colorscheme Tomorrow

" Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
let g:syntastic_javascript_checkers=['jscs', 'jshint']

" Keep syntastic happy with ng- attributes in angular
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]

" Turn off for HTML, just too annoying
let g:syntastic_html_checkers=['']
let g:syntastic_check_on_open = 0

" Vim slime
let g:slime_target = "tmux"

" Indentations
autocmd FileType cpp setlocal shiftwidth=2 tabstop=2
autocmd FileType html setlocal shiftwidth=4 tabstop=4
autocmd FileType python setlocal shiftwidth=4 tabstop=4
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2

" Spellcheck (Only for text files)
autocmd FileType text\|mkd setlocal spell spelllang=en_gb

" SimplyFold
let g:SimpylFold_docstring_preview = 1

" Ctrl-P
let g:ctrlp_custom_ignore = {
  \ 'dir': '\v[\/](.git|.hg|.svn|node_modules|dem|info)$',
  \ 'file': '\v\.(pyc|png|jpg)$'
  \ }

" GLSL syntax highlighting
autocmd BufNewFile,BufRead *.vert,*.frag,*.glsl set ft=glsl

" Experiment! Go syntax highlighting
" Some Linux distributions set filetype in /etc/vimrc.
" Clear filetype flags before changing runtimepath to force Vim to reload them.
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on

" Disable indent folding
"filetype plugin indent off

" Disable linting
" let disable_lint = 1 
"
" Goldenview
" jump to next and previous window
let g:goldenview__enable_default_mapping = 0
nmap <silent> <C-W>  <Plug>GoldenViewNext
nmap <silent> <C-Q>  <Plug>GoldenViewPrevious

" YCM
let g:ycm_disable_for_files_larger_than_kb = 100

" GLSL instruction count
nnoremap <silent> <C-I> :echom "Shader info: " . system("glsl-validate.py --compile " . bufname("%"))<cr>
