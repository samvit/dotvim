set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype on  " Automatically detect file types.  set nocompatible  " no vi compatibility.
" Add recently accessed projects menu (project plugin)
set viminfo^=\!

"let terminal resize scale the internal windows
au VimResized * :wincmd =

" Minibuffer Explorer Settings
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" alt+n or alt+p to navigate between entries in QuickFix
map <silent> <m-p> :cp <cr>
map <silent> <m-n> :cn <cr>

syntax enable

set cf  " Enable error files & error jumping.
set clipboard=unnamed  " Yanks go on clipboard instead.
set history=256  " Number of things to remember in history.
set autowrite  " Writes on make/shell commands
set autoread  " reloads upon file change
set ruler  " Ruler on
set nu  " Line numbers on
set nowrap  " Line wrapping off
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)
set colorcolumn=80 "Set column 80 to be grey. Contain code width


" Formatting
set ts=2  " Tabs are 2 spaces
set bs=2  " Backspace over everything in insert mode
set shiftwidth=2  " Tabs under smart indent
set incsearch
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
set noeb vb t_vb=
set laststatus=2  " Always show status line.

" gvim specific
set mousehide  " Hide mouse after chars typed
set mouse=a  " Mouse in all modesc
set antialias

"Personal Customizations

" Insert the directory of the current buffer in command line mode
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

"leader mappings
let mapleader = ","

"Make redo easier
noremap r <c-r>

"Dont lose r's funktionality
noremap <leader>r r

"So I can copy a whole line without the newline like yy has 
noremap Y y$  

"So I can duplicate and coment in one keystroke
vmap gy ygvgcp
nmap gyy yyPgccj

"map cap h and cap l to beg and end of line=more intuitive
noremap H ^
noremap L $
vnoremap L g_
noremap <leader>H H
noremap <leader>L L
"mm to go to matching
map m %
noremap <leader>mm m
"M go to hilight till the rest of this {} block
noremap M $v%
noremap MM ^v%
"keep M's functionality:
noremap <leader>M M
"semicolon as colon
map ; :
map :qqq :q!<CR>
"to keep original semicolon functionality:
noremap ;; ;
"escape is hard to reach so map kj to <ESC>
inoremap kj <ESC>l
" nnoremap kj <ESC>
vnoremap kj <ESC>

"scroll up and down faster with J and K
noremap K 5k
noremap J 5j

"keep functionality of K and J with <leader>J/K
noremap <leader>K K
noremap <leader>J J

"easily escape and save from within insert mode
inoremap ww <ESC>:w<Return>l

"normal text selection in insert mode
if has("gui_macvim")
  let macvim_hig_shift_movement = 1
  "Add hilight to current line only in MacVim
  au WinLeave * set nocursorline
  au WinEnter * set cursorline
  set cursorline
endif

" Sudo to write
cnoremap w!! w !sudo tee % >/dev/null

"For editing the vimrc more easily:
nnoremap <leader>ev :vs $MYVIMRC<CR>
nnoremap <leader>sv :so $MYVIMRC<CR>

"For editing the complaints file more easily:
nnoremap <leader>ec :vs ~/.vim/complaints.txt<CR> 

"For editing the complaints file more easily:
nnoremap :todo :vs ~/Dropbox/todo.txt<CR>
"For accessing the scratchpad file more easily:
nnoremap <leader>es :e ~/junk/scratchPad.txt<CR> 

"For editing the bashrc file more easily:
nnoremap <leader>eb :vs ~/.bashrc<CR> 

"For editing the personal_log more easily:
nnoremap <leader>el :vs ~/.personal_log<CR> 

"colors
set t_Co=256
colorscheme vividchalk
" colorscheme molokai
"colorscheme morning
"colorscheme mustang
"other stuff
set nolist
set incsearch
set ignorecase
set smartcase 
set scrolloff=3 "So the cursor doesnt get lost on the edge
set wildmode=longest,list
set nobackup
set noswapfile
filetype plugin indent on
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set gfn=Monaco:h12
"this is to toggle the smart indent which messes up pasting
nnoremap <F2> :set invpaste paste?<CR> 
set pastetoggle=<F2> "F2 toggles paste in insert mode too
set showmode "show the change to the user
set shortmess=a
"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what I use

"Syntax hilight ejs files as html+js -- edit killed this after i added the vim-jst plugin
au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.cljs set filetype=clojure

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" first disable the s key because its better to use c for everything anyways
map s <Nop>
" Easy window navigation from keyboard too
map sh <C-w>h
map sj <C-w>j
map sk <C-w>k
map sl <C-w>l
"
" Easy window navigation from keyboard too
map sH <C-w>H
map sJ <C-w>J
map sK <C-w>K
map sL <C-w>L

"Easy tab navigation 
map <d-Up> :tabr<cr>
map <d-Down> :tabl<cr>
map <d-Left> :tabp<cr>
map <d-Right> :tabn<cr>

"Easy tab navigation from keyboard too
map gh :tabp<cr>
map gl :tabn<cr>
map gH :tabr<cr>
map gL :tabl<cr>

"Better Searching
set hlsearch
noremap <silent> <leader><space> :noh<cr>:call clearmatches()<cr>

" Visual Mode selection (Press * while selecting something)
function! s:VSetSearch()
  let temp = @@
  norm! gvy
  let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
  let @@ = temp
endfunction



"Allow To hilight 5 words at a time
nnoremap <leader>hh :execute 'match InterestingWord1 /\<<c-r><c-w>\>/'<cr>
nnoremap <leader>h1 :execute 'match InterestingWord1 /\<<c-r><c-w>\>/'<cr>
nnoremap <leader>h2 :execute '2match InterestingWord2 /\<<c-r><c-w>\>/'<cr>
nnoremap <leader>h3 :execute '3match InterestingWord3 /\<<c-r><c-w>\>/'<cr>


" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

" Buffer Window Resizing
nnoremap <c-right> 5<c-w>>
nnoremap <c-left> 5<c-w><
nnoremap <c-up> 5<c-w>+
nnoremap <c-down> 5<c-w>-

" Open a Quickfix window for the last search.
nnoremap <silent> <leader>? :execute 'vimgrep /'.@/.'/g %'<CR>:copen<CR>

" Ack for the last search.
nnoremap <silent> <leader>/ :execute "Ack! '" . substitute(substitute(substitute(@/, "\\\\<", "\\\\b", ""), "\\\\>", "\\\\b", ""), "\\\\v", "", "") . "'"<CR>

"Keep hilight when indenting around
vnoremap > ><CR>gvi
vnoremap < <<CR>gv
noremap NN =ip 

"Plugin Configurations

"CtrlP
noremap <space><space> <Esc>:CtrlP .<CR>
let g:ctrlp_working_path_mode = 'c' "index on CWD
let g:ctrlp_switch_buffer = 'e' " Dont jump to the other buffer if the file is already open

set wildignore+=*.pyc,
let g:ctrlp_custom_ignore = 'node_modules\|\.DS_Store\|\.git\|venv'

"Conque
map <leader>c :ConqueTermSplit bash
map <leader>cv :ConqueTermVSplit bash

"NERDTRee
map <space> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']

"Tagbar
nmap <leader>t :TagbarToggle<CR>

"YouCompleteMe
nnoremap + :YcmCompleter GoTo<CR>
nnoremap _ :YcmCompleter GoToReferences<CR>
let g:ycm_autoclose_preview_window_after_completion=1

let g:ycm_key_list_select_completion = ['<Enter>', '<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<S-Enter>', '<C-k>', '<Up>']

"EasyMotion triggers:
map ,, <leader><leader>
"JSBeautify 
"This plugin is mapped to ,ff to format the current javascript file

"Rename
":rename filename
"to rename the current file

"Ack:
map :ack :Ack
map <leader>a :Ack
" <leader>a<motion>, or 

"vim-seek
let g:SeekKey = 's'
let g:SeekBackKey = 'S'

if has("gui_running")
    set guioptions=egmrt
endif

" Turn off delimateMate for Clojure files (It's annoying with Clojure)
au! FileType clojure let b:loaded_delimitMate=1

"Vim-closedform by aaron
imap <M-;> <Esc>:AppendClosingFormSymbol<CR>a
nmap <M-;> <Esc>:AppendClosingFormSymbol<CR>
imap <M-:> <Esc>:AppendAllClosingFormSymbols<CR>a
nmap <M-:> <Esc>:AppendAllClosingFormSymbols<CR>

"Rainbow Parenthesis
" au VimEnter * RainbowParenthesesToggle
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
" au Syntax * RainbowParenthesesLoadBraces

"gitgutter
highlight clear SignColumn
set tabstop=4
set shiftwidth=4

