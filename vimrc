call plug#begin(expand('~/.vim/plugged'))
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'nordtheme/vim'
call plug#end()

let g:airline_powerline_fonts = 1
filetype plugin indent on

set number
set ignorecase

set autoindent
set cindent
set smartindent

set ls=2
set nolinebreak
set history=1000
set ruler

syntax enable

colorscheme nord
