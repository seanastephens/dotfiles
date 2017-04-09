" BEGIN VUNDLE STUFF

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'lervag/vimtex'
let g:vimtex_disable_version_warning = 1

Plugin 'editorconfig/editorconfig-vim'

" Dependency; reqiured for vim-syncopate.
Plugin 'google/vim-maktaba'

Plugin 'google/vim-syncopate'

Plugin 'ternjs/tern_for_vim'
let g:tern_show_argument_hints = 'on_move'
let g:tern_is_show_argument_hints_enabled = 1
let g:tern_show_signature_in_pum = 1

Plugin 'jelera/vim-javascript-syntax'

Plugin 'pangloss/vim-javascript'

Plugin 'justinmk/vim-syntax-extra'

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=17
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=18

Plugin 'ap/vim-css-color'

Plugin 'Raimondi/delimitMate'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
" END VUNDLE STUFF

" Enable 256 color terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
	colorscheme distinguished
endif

" Yes
imap jj <Esc>

" Fixes backspace not working on newlines.
set backspace=2

" Lets get real here
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Line numbering
set number
set relativenumber

" shortcut
:nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

" Preview regex
set incsearch hlsearch

" Since I don't always use bash
set sh=bash

func! ElmFormat()
  let l:winview=winsaveview()
  :%!elm-format --stdin
  call winrestview(l:winview)
endf

:autocmd BufWritePre *.elm :call ElmFormat()
