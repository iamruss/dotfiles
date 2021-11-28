Plug 'lepture/vim-velocity'

autocmd BufNewFile,BufRead *.vm,widget.xml set ft=velocity
autocmd BufNewFile,BufRead *.vm,widget.xml let b:match_debug = 1
autocmd BufNewFile,BufRead *.vm,widget.xml let b:match_words = '#if:#elseif:#else:#end,'
    \ . '#foreach:#each:#before:#after:#between:#odd:#even:#nodata:#beforeall:#afterall:#end,'
    \ . '#registerEndOfPageHtml:#end,'
    \ . '<\@<=\([^/][^ \t>]*\)[^>]*\%(>\|$\):<\@<=/\1>'


