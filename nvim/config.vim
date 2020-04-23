" Remap leader key to ,
let g:mapleader=','

" Automatically re-read file if a change was detected outside of vim
set autoread

" Enable line numbers
set number
set relativenumber

" Yank and paste with the system clipboard
set clipboard=unnamed

" Hides buffers instead of closing them
set hidden

set expandtab
set softtabstop=2
set shiftwidth=2

set cmdheight=1

" ignore case when searching
set ignorecase
" if the search string has an upper case letter in it, the search will be case sensitive
set smartcase

" Don't give completion messages like 'match 1 of 2'
" or 'The only match'
set shortmess+=c

set nobackup
set nowritebackup
set noswapfile
set noruler
set nocursorline
set nowrap
set noshowcmd

if has('persistent_undo')
  set undofile
  set undolevels=3000
  set undoreload=10000
endif
