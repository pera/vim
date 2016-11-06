set nocompatible

let $VIMDIR = matchstr(&rtp, '^.\{-}\ze,')

filetype indent plugin on
syntax on

set encoding=utf-8

set hidden
set wildmenu
set showcmd
set hlsearch
" auto change working dir (could have problems with some plugins)
set autochdir

set ignorecase
set smartcase
set magic

set whichwrap+=<,>,[,]
set backspace=2
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab

set cindent
set cino=(0,u0,U0

set foldmethod=indent
set foldlevelstart=99

set cscopetag

set nostartofline
set ruler

set visualbell

set number

set cursorline

set laststatus=2
set statusline+=b%n:\ %<%F\ %h%m%r%=%-14.(%l,%c%V%)\ %P

set completeopt=menu,menuone

set sessionoptions=blank,buffers,curdir,folds,help,tabpages,winsize

" buffers mapping
nnoremap g<SPACE> <C-S-^>
nnoremap gl :ls<CR>
nnoremap gb :bn<CR>
nnoremap gB :bN<CR>

" visual mode paste without overwriting register
xnoremap <expr> P 'pgv"'.v:register.'y'

" Create new tab using current buffer (\t ab)
nmap <silent> <Leader>t :tab split<CR>

" Clean search pattern (\c lean)
nmap <silent> <Leader>c :let @/ = ""<CR>

" sudo tee trick
cmap w!! w !sudo tee > /dev/null %

if has("gui_running")
	set guioptions-=T
	set guioptions-=e
	set lines=35 columns=110

	set guifont=-*-fixed-medium-r-normal-*-13-*-*-*-*-*-iso8859-1

	colorscheme inkpot
endif
