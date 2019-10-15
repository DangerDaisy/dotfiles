"---[VUNDLE]---
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'majutsushi/tagbar'
Plugin 'dracula/vim'
Plugin 'ervandew/supertab'
Plugin 'ryanoasis/vim-devicons'
Plugin 'jreybert/vimagit'
Plugin 'luochen1990/rainbow'
Plugin 'mhinz/vim-startify'
call vundle#end()

"---[AIRLINE]---
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_powerline_fonts = 1

"---[VIM]---
colorscheme dracula
syntax on
set autochdir
set shiftwidth=4
set tabstop=4
set backspace=2
set number relativenumber
filetype plugin indent on
set cursorline

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

"Map Escape to save current buffer
map <Esc> :w<Enter>
"Great for typing snake_case variables faster.
imap <C-Space> _

"---[TWEAKS]---
"Causes cursor to move to end of selection after yanking insted of return to the top
vmap y y'];
