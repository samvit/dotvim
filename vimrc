call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
filetype on  " Automatically detect file types.  set nocompatible  " no vi compatibility.

" Add recently accessed projects menu (project plugin)
set viminfo^=\!

" Minibuffer Explorer Settings
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" alt+n or alt+p to navigate between entries in QuickFix
map <silent> <m-p> :cp <cr>
map <silent> <m-n> :cn <cr>

" Change which file opens after executing :Rails command
let g:rails_default_file='config/database.yml'

syntax enable

set cf  " Enable error files & error jumping.
set clipboard+=unnamed  " Yanks go on clipboard instead.
set history=256  " Number of things to remember in history.
set autowrite  " Writes on make/shell commands
set ruler  " Ruler on
set nu  " Line numbers on
set nowrap  " Line wrapping off
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)

" Formatting
set ts=2  " Tabs are 2 spaces
set bs=2  " Backspace over everything in insert mode
set shiftwidth=2  " Tabs under smart indent
set nocp incsearch
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr
set cindent
set autoindent
set smarttab
set expandtab

" Visual
set showmatch  " Show matching brackets.
set mat=5  " Bracket blinking.
set list
" Show $ at end of line and trailing space as ~
set lcs=tab:\ \ ,eol:$,trail:~,extends:>,precedes:<
set novisualbell  " No blinking .
set noerrorbells  " No noise.
set laststatus=2  " Always show status line.

" gvim specific
set mousehide  " Hide mouse after chars typed
set mouse=a  " Mouse in all modesc

"Personal Customizations
"map cap h and cap l to beg and end of line=more intuitive
map H ^
map L $
"mm to go to matching
map mm %
"semicolon as colon
map ; :
"to keep original semicolon functionality:
noremap ;; ;
"escape is hard to reach so map kj to <ESC>
noremap kj <ESC>
inoremap kj <ESC>l
nnoremap kj <ESC>
vnoremap kj <ESC>
"easily escape and save from within insert mode
inoremap ww <ESC>:w<Return>l

"use Control-Right to move to bottom of window, and C-L for Top
nnoremap <C-Right> L
nnoremap <C-Left> H

"format all Tabs
nnoremap == ggvGb

"So we can split a line somewhere
nmap NN i<Return><ESC>

"cool stuff with leader
"let mapleader=","
map , <leader>

"For editing the vimrc more easily:
nnoremap <leader>ev :vs $MYVIMRC<CR>
nnoremap <leader>sv :so $MYVIMRC<CR>

"colors
set t_Co=256
colorscheme molokai
"colorscheme morning
"colorscheme mustang
"other stuff
set nolist
set incsearch
set ignorecase
set smartcase "set scrolloff=2
set wildmode=longest,list
set nobackup
set noswapfile
filetype plugin indent on
set listchars=tab:>.,trail:.,extends:#,nbsp:.

"this is to toggle the smart indent which messes up pasting
nnoremap <F2> :set invpaste paste?<CR> 
set pastetoggle=<F2> "F2 toggles paste in insert mode too
set showmode "show the change to the user

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what I use

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Alt-Left/Alt-Right arrow keys change buffers in all modes
noremap <A-Left> <Esc>:bp<CR>
inoremap <A-Left> <Esc>:bp<CR>
nnoremap <A-Left> <Esc>:bp<CR>
vnoremap <A-Left> <Esc>:bp<CR>

noremap <A-Right> <Esc>:bn<CR>
inoremap <A-Right> <Esc>:bn<CR>
nnoremap <A-Right> <Esc>:bn<CR>
vnoremap <A-Right> <Esc>:bn<CR>

" Make scrolling more smooth so I dont loose track of my location
:map <C-D> <C-E><C-E><C-Y><C-E><C-Y><C-E><C-E><C-Y><C-E><C-Y><C-E><C-E><C-Y><C-E><C-Y><C-E><C-E><C-Y><C-E><C-Y><C-E><C-E><C-Y><C-E><C-Y><C-E><C-E><C-Y><C-E><C-Y><C-E><C-E><C-Y><C-E><C-Y><C-E><C-E><C-Y><C-E><C-Y><C-E><C-E><C-Y><C-E><C-Y><C-E><C-E><C-Y><C-E><C-Y><C-E><C-E><C-Y><C-E><C-Y><C-E><C-E><C-Y><C-E><C-Y><C-E><C-E><C-Y><C-E><C-Y><C-E><C-E><C-Y><C-E><C-Y><C-E><C-E><C-Y><C-E><C-Y><C-E><C-E><C-Y><C-E><C-Y><C-E><C-E><C-Y><C-E><C-Y>
:map <C-U> <C-Y><C-Y><C-E><C-Y><C-E><C-Y><C-Y><C-E><C-Y><C-E><C-Y><C-Y><C-E><C-Y><C-E><C-Y><C-Y><C-E><C-Y><C-E><C-Y><C-Y><C-E><C-Y><C-E><C-Y><C-Y><C-E><C-Y><C-E><C-Y><C-Y><C-E><C-Y><C-E><C-Y><C-Y><C-E><C-Y><C-E><C-Y><C-Y><C-E><C-Y><C-E><C-Y><C-Y><C-E><C-Y><C-E><C-Y><C-Y><C-E><C-Y><C-E><C-Y><C-Y><C-E><C-Y><C-E><C-Y><C-Y><C-E><C-Y><C-E><C-Y><C-Y><C-E><C-Y><C-E><C-Y><C-Y><C-E><C-Y><C-E><C-Y><C-Y><C-E><C-Y><C-E><C-Y><C-Y><C-E><C-Y><C-E>

"Plugin Configurations
"
"Command-T 
noremap <leader>o <Esc>:CommandT<CR>
noremap <leader>O <Esc>:CommandTFlush<CR>
noremap <leader>m <Esc>:CommandTBuffer<CR>

"Conque
map <leader>c :ConqueTermSplit bash
map <leader>cv :ConqueTermVSplit bash

"NERDTRee
map <leader>nt :NERDTreeToggle<CR>

"TagList
nnoremap <silent> <leader>tl :TlistToggle<CR>

"EasyMotion triggers:
map ,, <leader><leader>
