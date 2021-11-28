Plug 'tpope/vim-fugitive'

"Each time you open a git object using fugitive it creates a new buffer.
autocmd BufReadPost fugitive://* set bufhidden=delete
