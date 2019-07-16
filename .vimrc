"Vundle Settings
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
call vundle#end()

"Airline settings
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_powerline_fonts = 1

colorscheme dracula
set guifont="monofurNerdFontComplete 8"

"General (G)Vim settings

"GVIM Minimal view.
set go-=m
set go-=T
set go-=M
set go-=r
set go-=b

syntax on
set autochdir
set shiftwidth=4
set tabstop=4
set number relativenumber
filetype plugin indent on

"Keyboard mapping
map <F3> :NERDTreeToggle<Enter>
map <F4> :TagbarToggle<Enter>
