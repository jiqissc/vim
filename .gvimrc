colorscheme desert

set guifont=DejaVu\ Sans\ Mono\ 10
set number
set guioptions-=L
set guioptions-=B
set guioptions-=R
set guioptions-=T



set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'mattn/emmet-vim'

Bundle '_jsbeautify'

filetype plugin indent on


