syntax on

" Tab garbage
set expandtab
set shiftwidth=4
set softtabstop=4

autocmd FileType javascript set shiftwidth=2 | set softtabstop=2
autocmd FileType html       set shiftwidth=2 | set softtabstop=2
autocmd FileType c          set shiftwidth=8 | set softtabstop=8
autocmd FileType make       set shiftwidth=8 | set softtabstop=8 | set noexpandtab

" Yes
imap jj <Esc>

" Fixes backspace not working on newlines.
set backspace=2

set autoindent

" Lets get real here
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
set noswapfile

autocmd FileType tex :nnoremap <silent> :ww <Esc>:w<CR>:!pdflatex "%" <CR><CR>:echo v:shell_error == 0 ? "tex compiled cleanly." : "Houston, we have a problem."<CR>
