set sessionoptions=blank,tabpages,curdir,folds,winsize,buffers,help
syntax on
"let g:solarized_termcolors=256
"let g:solarized_termtrans=0
"let g:solarized_degrade=1
"let g:solarized_contrast="high"
"let g:solarized_visibility="high"
set t_Co=256
"set term=xterm+256color
set background=dark
colorscheme desert 
"colorscheme solarized

set timeoutlen=250

set guifont=DejaVu\ Sans\ Mono\ 10
set number
set guioptions-=L
set guioptions-=B
set guioptions-=R
set guioptions-=T
set list lcs=tab:\|\ 

set nocompatible
set foldenable
set foldmethod=indent
set foldlevel=9999
set autochdir
set smartindent

set shiftwidth=4
set softtabstop=4
set tabstop=4 
set expandtab

"imap  [[ <ESC>
"cmap  [[ <ESC>

inoremap jj <Esc>
nnoremap <Tab> <Esc>
vnoremap <Tab> <Esc>
cnoremap jj  <Esc>
onoremap <Tab> <Esc>


filetype off



set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'mattn/emmet-vim'
Plugin 'jsbeautify'
Plugin 'neocomplcache'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'The-NERD-Commenter'
Plugin 'The-NERD-tree'
Plugin 'Indent-Guides'
Plugin 'vim-scripts/CSApprox'
filetype plugin indent on



"let g:user_emmet_mode='a'
"let g:user_emmet_install_global=0
"autocmd FileType html,css EmmetInstall

"let g:user_emmet_expandabbr_key='<C-=>'

"let g:user_emmet_leader_key='<c-x>'

hi IndentGuidesOdd ctermbg=black
hi IndentGuidesEven ctermbg=darkGray
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
"colorscheme inkpot 
set ts=4 sw=4 et
autocmd vimEnter,ColorScheme * :hi IndentGuidesOdd guibg=#3a3a3a ctermbg=237
autocmd vimEnter,ColorScheme * :hi IndentGuidesEven guibg=#444444 ctermbg=238



map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
map / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-sn)

map n <Plug>(easymotion-next)
omap N <Plug>(easymotion-prev)

let g:EasyMotion_start = 0







"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Enable heavy features.
" Use camel case completion.
"let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
"let g:neocomplcache_enable_underbar_completion = 1

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
\ 'default' : '',
\ 'vimshell' : $HOME.'/.vimshell_hist',
\ 'scheme' : $HOME.'/.gosh_completions'
    \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
"return neocomplcache#smart_close_popup() . "\<CR>"
" For no inserting <CR> key.
return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplcache#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplcache#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplcache#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplcache#close_popup() . "\<Down>"


" Or set this.
"let g:neocomplcache_enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplcache_enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplcache_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

"alt hotkeys
map <ESC>, <C-W><
map <ESC>. <C-W>>
map <ESC>- <C-w>-
map <ESC>= <C-W>=
map <ESC>+ <C-W>+


"session auto save

au VimLeave * exe 'if exists("g:cmdName")&&g:cmdName=="vims"|if exists("g:sessionName")|exe "wviminfo! ~/.vim/session/".g:sessionName.".session.viminfo"|else|exe "wviminfo! ~/.vim/session/.work.session.viminfo"|endif|endif'


au VimLeave * exe 'if exists("g:cmdName")&&g:cmdName=="vims"|if exists("g:sessionName")|exe "mksession! ~/.vim/session/".g:sessionName.".session"|else|exe "mksession! ~/.vim/session/.work.session"|endif|endif'


"set shell
set shell=/bin/bash\ --rcfile\ ~/.bashrc
let $BASH_ENV = "~/.bash_aliases"

"set tabs
hi TabLineFill ctermfg=LightGray ctermbg=LightGray
hi TabLine ctermfg=DarkGray ctermbg=LightBlue term=NONE cterm=NONE guibg=Cyan guifg=Gray30 gui=None
hi TabLineSel ctermfg=White ctermbg=Red term=NONE cterm=NONE guibg=Red guifg=White gui=None
"hi Title ctermfg=LightBlue ctermbg=Magenta
set tabline=%!MyTabLine()  " custom tab pages line
function MyTabLine()
    let s = '' " complete tabline goes here
    " loop through each tab page
    for t in range(tabpagenr('$'))
            " set highlight
            if t + 1 == tabpagenr()
                    let s .= '%#TabLineSel#'
            else
                    let s .= '%#TabLine#'
            endif
            " set the tab page number (for mouse clicks)
            let s .= '%' . (t + 1) . 'T'
            let s .= ' '
            " set page number string
            let s .= t + 1 . ' '
            " get buffer names and statuses
            let n = ''      "temp string for buffer names while we loop and check buftype
            let m = 0       " &modified counter
            let bc = len(tabpagebuflist(t + 1))     "counter to avoid last ' '
            " loop through each buffer in a tab
            for b in tabpagebuflist(t + 1)
                    " buffer types: quickfix gets a [Q], help gets [H]{base fname}
                    " others get 1dir/2dir/3dir/fname shortened to 1/2/3/fname
                    if getbufvar( b, "&buftype" ) == 'help'
                            let n .= '[H]' . fnamemodify( bufname(b), ':t:s/.txt$//' )
                    elseif getbufvar( b, "&buftype" ) == 'quickfix'
                            let n .= '[Q]'
                    else
                            let n .= pathshorten(bufname(b))
                    endif
                    " check and ++ tab's &modified count
                    if getbufvar( b, "&modified" )
                            let m += 1
                    endif
                    " no final ' ' added...formatting looks better done later
                    if bc > 1
                            let n .= ' '
                    endif
                    let bc -= 1
            endfor
            " add modified label [n+] where n pages in tab are modified
            if m > 0
                    let s .= '[' . m . '+]'
            endif
            " select the highlighting for the buffer names
            " my default highlighting only underlines the active tab
            " buffer names.
            if t + 1 == tabpagenr()
                    let s .= '%#TabLineSel#'
            else
                    let s .= '%#TabLine#'
            endif
            " add buffer names
            if n == ''
                    let s.= '[New]'
            else
                    let s .= n
            endif
            " switch to no underlining and add final space to buffer list
            let s .= ' '
    endfor
    " after the last tab fill with TabLineFill and reset tab page nr
    let s .= '%#TabLineFill#%T'
    " right-align the label to close the current tab page
    if tabpagenr('$') > 1
                let s .= '%=%#TabLineFill#%999Xclose'
    endif
    return s
endfunction

inoremap < <><Esc>i
inoremap ( ()<Esc>i
inoremap { {}<Esc>i<CR><CR><Esc>k<S-A><Tab>
inoremap [ []<Esc>i
