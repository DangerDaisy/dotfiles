"---[VUNDLE]---
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"---[PLUGINS]---
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ryanoasis/vim-devicons'
Plugin 'jreybert/vimagit'
Plugin 'ilyarcher/cmake4vim'
Plugin 'majutsushi/tagbar'
call vundle#end()

"---[GLOBAL VARIABLES]---
"Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_powerline_fonts = 1

"---[VIM]---
set laststatus=2
colorscheme dracula
syntax on
set shiftwidth=4
set tabstop=4
set backspace=2
set number relativenumber
filetype plugin indent on
set cursorline
set foldmethod=syntax

"---[GVIM]---
colorscheme jellybeans "https://github.com/nanotech/jellybeans.vim
set guifont="monofurNerdFontComplete 8"
"GVIM Minimal view.
set go-=m "Remove Menubar
set go-=T "Remove Topbar
set go-=l "Remove Left Scrollbars
set go-=L
set go-=r "Remove Right Scrollbars
set go-=R
set go-=b "Remove Bottom Scrollbars
set go-=B

"---[KEYBOARD MAPPINGS]---
map <F1> :NERDTreeToggle<Enter>
mapz
map <F4> :TagbarToggle<Enter>
map <F5> :Magit<Enter>
inoremap jj <ESC>
"
"Map Escape to save current buffer
map <Esc> :w<Enter> 
" For typing snake_case variables.
imap <S-Space> _ 
