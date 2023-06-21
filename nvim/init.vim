set mouse=a
set number
set termguicolors

" copy clipboard (need wl-clipboard)
vnoremap <C-c> "+y

" see :help last-position-jump
autocmd BufReadPost * if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit' | exe "normal! g`\"" | endif

" load packer.nvim and plugins
"lua require('plugins')

" load lsp settings
"lua require('lsp')
