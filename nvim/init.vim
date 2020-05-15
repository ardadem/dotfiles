set mouse=a
set number

vnoremap <C-c> "+y

" see :help last-position-jump
autocmd BufReadPost * if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit' | exe "normal! g`\"" | endif
