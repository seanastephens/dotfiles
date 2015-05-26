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

Plugin 'elzr/vim-json'

Plugin 'Valloric/YouCompleteMe'
let g:ycm_extra_conf_globlist = ['~/code/*','!~/*']
let g:ycm_register_as_syntastic_checker = 0
let g:ycm_always_populate_location_list = 1

Plugin 'jelera/vim-javascript-syntax'

Plugin 'pangloss/vim-javascript'

Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'Raimondi/delimitMate'
imap <C-c> <CR><Esc>O

Plugin 'scrooloose/syntastic'
" default recommended options
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" gcc options
let g:syntastic_c_include_dirs = ['src', 'test']
let g:syntastic_c_compiler_options="-std=c99 -Wall -Werror -pedantic"
let g:syntastic_c_check_header=1

Plugin 'marijnh/tern_for_vim'

Plugin 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary")

Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'bling/vim-airline'
set laststatus=2
set ttimeoutlen=50
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
      let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

Plugin 'airblade/vim-gitgutter'

Plugin 'tpope/vim-fugitive'

Plugin 'wikitopian/hardmode'
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
colorscheme distinguished

" Tab garbage
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

autocmd FileType javascript set shiftwidth=2 | set softtabstop=2 | set tabstop=2 
autocmd FileType html       set shiftwidth=2 | set softtabstop=2 | set tabstop=2
autocmd FileType c          set shiftwidth=8 | set softtabstop=8 | set tabstop=8
autocmd FileType make       set shiftwidth=8 | set softtabstop=8 | set tabstop=8 | set noexpandtab

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

" tex auto-compile
autocmd FileType tex :nnoremap <silent> :ww <Esc>:w<CR>:!pdflatex "%" <CR><CR>:echo v:shell_error == 0 ? "tex compiled cleanly." : "Houston, we have a problem."<CR>

" shortcut
:nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

" shortcut to hard mode
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>
