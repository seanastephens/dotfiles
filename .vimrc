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

Plugin 'plasticboy/vim-markdown'

Plugin 'lervag/vimtex'

Plugin 'nelstrom/vim-markdown-folding'

Plugin 'Shougo/unite.vim'

" Dependency; reqiured for vim-syncopate.
Plugin 'google/vim-maktaba'

" Strongly recommended: easy configuration of maktaba plugins.
Plugin 'google/vim-glaive'

Plugin 'google/vim-syncopate'

Plugin 'ternjs/tern_for_vim'
let g:tern_show_argument_hints = 'on_move'
let g:tern_is_show_argument_hints_enabled = 1
let g:tern_show_signature_in_pum = 1

Plugin 'Valloric/YouCompleteMe'

Plugin 'jelera/vim-javascript-syntax'

Plugin 'pangloss/vim-javascript'

Plugin 'justinmk/vim-syntax-extra'

Plugin 'nathanaelkane/vim-indent-guides'
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=17
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=18

Plugin 'ap/vim-css-color'

Plugin 'Raimondi/delimitMate'

Plugin 'bling/vim-airline'
set laststatus=2
set ttimeoutlen=50
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
      let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

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
endif
" colorscheme github
colorscheme distinguished

" Tab garbage
set shiftwidth=4
set softtabstop=4
set tabstop=4

autocmd FileType javascript set shiftwidth=2 | set softtabstop=2 | set tabstop=2 
autocmd FileType html       set shiftwidth=2 | set softtabstop=2 | set tabstop=2
autocmd FileType c          set shiftwidth=8 | set softtabstop=8 | set tabstop=8
autocmd FileType make       set shiftwidth=8 | set softtabstop=8 | set tabstop=8 | set noexpandtab
autocmd FileType python     set shiftwidth=4 | set softtabstop=4 | set tabstop=4 | set expandtab

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

" play nice with eclim
let g:EclimCompletionMethod = 'omnifunc'
:nnoremap <Leader><space> <Esc>:JavaDocPreview<CR>
:nnoremap <Leader>i <Esc>:JavaImport<CR>
:nnoremap <Leader>r <Esc>:JavaRename 
:nnoremap <Leader>c <Esc>:JavaCorrect<CR>

" Preview regex
set incsearch hlsearch

" YCM docs
:nnoremap <Leader>i <Esc>:YcmCompleter GetDoc<CR>
