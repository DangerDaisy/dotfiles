"---[VUNDLE]---
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-dispatch'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'majutsushi/tagbar'
Plugin 'dracula/vim'
Plugin 'ervandew/supertab'
Plugin 'ryanoasis/vim-devicons'
Plugin 'jreybert/vimagit'
Plugin 'frazrepo/vim-rainbow'
Plugin 'mhinz/vim-startify'
Plugin 'wikitopian/hardmode'
call vundle#end()

"---[GLOBAL VARIABLES]---
" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_powerline_fonts = 1
" Rainbow
let g:rainbow_active = 1

"---[VIM]---
set laststatus=2
colorscheme dracula
syntax on
set autochdir
set shiftwidth=4
set tabstop=4
set backspace=2
set number relativenumber
filetype plugin indent on
set cursorline
set foldmethod=syntax

if has('win32')
  set makeprg=mingw32-make
endif

"---[GVIM]---
set guifont="monofurNerdFontComplete 8"
"GVIM Minimal view.
"Remove Menubar
set go-=m
"Remove Topbar
set go-=T
"Remove Left Scrollbars
set go-=l
set go-=L
"Remove Right Scrollbars
set go-=r
set go-=R
"Remove Bottom Scrollbars
set go-=b
set go-=B

"---[KEYBOARD MAPPINGS]---
map <F3> :NERDTreeToggle<Enter>
map <F4> :TagbarToggle<Enter>
map <F5> :Magit<Enter>
inoremap jj <ESC>

"Map Escape to save current buffer
map <Esc> :w<Enter>
"Great for typing snake_case variables faster.
imap <C-Space> _
