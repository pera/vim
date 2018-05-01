set nocompatible

let $VIMDIR = matchstr(&rtp, '^.\{-}\ze,')

filetype plugin on
filetype indent off
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
set smartindent
set tabstop=4
set softtabstop=-1
set shiftwidth=0
set smarttab
set copyindent
set preserveindent

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

set listchars=tab:╾─,trail:•
if has("patch-7.4.710")
	set listchars+=space:·
endif

set completeopt=menu,menuone

set sessionoptions=blank,buffers,curdir,folds,help,tabpages,winsize

set pastetoggle=<Leader>p

" buffers mapping
nnoremap g<Space> <C-S-^>
nnoremap gl :ls<CR>
nnoremap gb :bn<CR>
nnoremap gB :bN<CR>

" visual mode paste without overwriting register
xnoremap <expr> P 'pgv"'.v:register.'y'

" Create new tab using current buffer (\t ab)
nnoremap <silent> <Leader>t :tab split<CR>

" Clean search pattern (\c lean)
nnoremap <silent> <Leader>c :let @/ = ""<CR>

" Toggle visible tabs and spaces (\v isible)
nnoremap <silent> <Leader>v :setlocal list!<CR>

" Convert tab characters to space characters (\<Tab>)
nnoremap <silent> <Leader><Tab> :setlocal noexpandtab <Bar> :%retab!<CR>
vnoremap <silent> <Leader><Tab> :<C-U>setlocal noexpandtab <Bar> '<,'>retab!<CR>

" Convert tab characters to space characters (\<Space>)
nnoremap <silent> <Leader><Space> :setlocal expandtab <Bar> %retab<CR>
vnoremap <silent> <Leader><Space> :<C-U>setlocal expandtab <Bar> '<,'>retab<CR>

" Insert date in ISO 8601 format (\d ate)
inoremap <silent> <Leader>d <C-R>=strftime("%FT%T%z")<CR>

" sudo tee trick
cnoremap w!! w !sudo tee > /dev/null %

if has("gui_running")
	set guioptions-=T
	set guioptions-=e
	set lines=35 columns=110

	" set guifont=ProggyCleanTTSZBP\ 12
	set guifont=Source\ Code\ Pro\ Medium\ 9

	colorscheme inkpot
else
	if v:version >= 704
		au ColorScheme * hi CursorLine cterm=NONE | hi CursorLineNr cterm=bold ctermfg=Red
	endif
	colorscheme ron
endif

