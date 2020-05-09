set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'FuzzyFinder'
call vundle#end()

set number
set ignorecase

set autoindent
set cindent
set sw=2

set autoread
set autowrite
set nocp
set et
set tabstop=2
set ls=2
set lbr
set showbreak=+++\
set showmatch
set si
set history=1000

if has ("syntax")
  syntax on
endif

