syntax on

" Tab garbage
set expandtab
set shiftwidth=8
set softtabstop=8

" Yes
imap jj <Esc>

" Fixes backspace not working on newlines.
set backspace=2

set autoindent

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

set number
set relativenumber

autocmd FileType javascript set shiftwidth=2 | set softtabstop=2
autocmd FileType tex :nnoremap <silent> :ww <Esc>:w<CR>:!pdflatex "%" <CR><CR>:echo v:shell_error == 0 ? "tex compiled cleanly." : "Houston, we have a problem."<CR>

set noswapfile

