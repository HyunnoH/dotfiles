call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
call plug#end()

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

if has ("syntax")
  syntax on
endif