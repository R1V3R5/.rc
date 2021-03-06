" This is standard pathogen and Vim setup
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" File exploration
Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'

" Git integration
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

" Coloring and syntax highlighting
Plugin 'rizzatti/dash.vim'
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-haml'
Plugin 'klen/python-mode'
Plugin 'altercation/vim-colors-solarized'
Plugin 'travitch/hasksyn'
Plugin 'kchmck/vim-coffee-script'
Plugin 'slim-template/vim-slim'
Plugin 'digitaltoad/vim-jade'
Plugin 'pbrisbin/html-template-syntax'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'jelera/vim-javascript-syntax'
"Plugin 'godlygeek/tabular' " Required for vim-markdown
"Plugin 'plasticboy/vim-markdown'

" Text manipulation
Plugin 'junegunn/vim-easy-align'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mattn/emmet-vim'

" Hinting
Plugin 'Shutnik/jshint2.vim'

" CoqIDE
"Bundle 'def-lkb/vimbufsync'
"Bundle 'the-lambda-church/coquille'

call vundle#end()
filetype plugin indent on

syntax on


" File type extenstions
au BufRead,BufNewFile *.hamlc set ft=haml
au BufRead,BufNewFile *.thor,*.jbuilder set filetype=ruby

" UTF-8 everywhere
set encoding=utf-8
set fileencoding=utf-8

" Use 7.4 hybrid numbering
set relativenumber
set number

" Keep temp files in a central location
set backupdir=~/.vim/tmp,/var/tmp,/tmp
set directory=~/.vim/tmp,/var/tmp,/tmp

" Use width-2 soft tabs
set expandtab
set shiftwidth=2
set softtabstop=2
set smartindent

" Better search
set hlsearch
set incsearch
set ignorecase
set smartcase

" Shell-style tab completion
set wildmenu
set wildmode=list:longest

" CtrlP .ignore
set wildignore+=*/cabal-dev/*,*/node_modules/*,*/bower_components/*,*.so,*.o,*.hi

" Use 256 color schemes
set t_Co=256
try
  let g:molokai_original = 1
  " colorscheme tir_black
  " set background=light
  " colorscheme solarized
catch
  colorscheme pablo
endtry

" Allow backspacing over auto-indents
set backspace=indent,eol,start

" Trailing whitespace tools
highlight ExtraWhitespace ctermbg=237 guibg=237
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Save on losing focus
au FocusLost * :wa

" GitGutter
highlight clear SignColumn
let g:gitgutter_sign_column_always = 1

" Open ggrep in a quickfix window
autocmd QuickFixCmdPost *grep* cwindow

" Tweaks
let mapleader=","

map <leader><leader> <c-^>

map <leader>b :NERDTreeToggle<cr>
map <leader>r :so $MYVIMRC<cr>
map <leader>x :noh \| ccl \| NERDTreeClose \| redraw!<cr>

" map <leader><up> :CoqUndo<cr>
" map <leader><left> :CoqToCursor<cr>
" map <leader><down> :CoqNext<cr>

" Start interactive EasyAlign in visual mode
vmap <Enter> <Plug>(EasyAlign)

" Window navigation
map <Tab>J :split<cr><c-w>j
map <Tab>L :vsplit<cr><c-w>l

nnoremap <Tab>j <c-w>j
nnoremap <Tab>k <c-w>k
nnoremap <Tab>h <c-w>h
nnoremap <Tab>l <c-w>l
inoremap <Tab>j <esc><c-w>j
inoremap <Tab>k <esc><c-w>k
inoremap <Tab>h <esc><c-w>h
inoremap <Tab>l <esc><c-w>l

" Let's do this
" nnoremap <up> <nop>
" nnoremap <down> <nop>
" nnoremap <left> <nop>
" nnoremap <right> <nop>
" inoremap <up> <nop>
" inoremap <down> <nop>
" inoremap <left> <nop>
" inoremap <right> <nop>
" inoremap jj <esc>

" Move line-wise on wrapped lines
nnoremap j gj
nnoremap k gk

" Indent
vnoremap < <gv
vnoremap > >gv

" Format
nmap =j :%!python -m json.tool<cr>

" Overtone helpers
" map <leader>x :Eval<cr>
" map <leader>q :Eval (stop)<cr>
