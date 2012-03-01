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
" colorscheme vividchalk  " Uncomment this to set a default theme

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
map mm %
map ; :
inoremap jj <ESC>

"cool stuff with leader
map , <leader>
"let mapleader=","
nmap <silent> <leader>ev e $MYVIMRC<CR>
nmap <silent> <leader>sv so $MYVIMRC<CR>

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

" Make scrolling more smooth so I dont loose track of my location
:map <C-D> <C-E><C-E><C-Y><C-E><C-Y><C-E><C-E><C-Y><C-E><C-Y><C-E><C-E><C-Y><C-E><C-Y><C-E><C-E><C-Y><C-E><C-Y><C-E><C-E><C-Y><C-E><C-Y><C-E><C-E><C-Y><C-E><C-Y><C-E><C-E><C-Y><C-E><C-Y><C-E><C-E><C-Y><C-E><C-Y><C-E><C-E><C-Y><C-E><C-Y><C-E><C-E><C-Y><C-E><C-Y><C-E><C-E><C-Y><C-E><C-Y><C-E><C-E><C-Y><C-E><C-Y><C-E><C-E><C-Y><C-E><C-Y><C-E><C-E><C-Y><C-E><C-Y><C-E><C-E><C-Y><C-E><C-Y><C-E><C-E><C-Y><C-E><C-Y><C-E><C-E><C-Y><C-E><C-Y>
:map <C-U> <C-Y><C-Y><C-E><C-Y><C-E><C-Y><C-Y><C-E><C-Y><C-E><C-Y><C-Y><C-E><C-Y><C-E><C-Y><C-Y><C-E><C-Y><C-E><C-Y><C-Y><C-E><C-Y><C-E><C-Y><C-Y><C-E><C-Y><C-E><C-Y><C-Y><C-E><C-Y><C-E><C-Y><C-Y><C-E><C-Y><C-E><C-Y><C-Y><C-E><C-Y><C-E><C-Y><C-Y><C-E><C-Y><C-E><C-Y><C-Y><C-E><C-Y><C-E><C-Y><C-Y><C-E><C-Y><C-E><C-Y><C-Y><C-E><C-Y><C-E><C-Y><C-Y><C-E><C-Y><C-E><C-Y><C-Y><C-E><C-Y><C-E><C-Y><C-Y><C-E><C-Y><C-E><C-Y><C-Y><C-E><C-Y><C-E>

"Plugin Configurations
"
"Conque
map <leader>c :ConqueTermSplit bash
map <leader>cv :ConqueTermVSplit bash














