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

Plugin 'gmarik/vundle'

Plugin 'mattn/emmet-vim'
Plugin 'jsbeautify'
call vundle#end()



filetype plugin indent on

let g:user_emmet_expandabbr_key='<c-e>'

