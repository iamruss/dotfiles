if(has('gui_running'))
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'

    let g:UltiSnipsExpandTrigger="<tab>"
    let g:UltiSnipsJumpForwardTrigger='<tab>'  " tried <c-j> and failed too
    let g:UltiSnipsJumpBackwardTrigger='<s-tab>'

    let g:MyUltiSnipsSnippetsHome = fnamemodify(expand("$MYVIMRC"), ":p:h")
    let g:UltiSnipsSnippetDirectories = [ MyUltiSnipsSnippetsHome.'\.dotfiles\UltiSnips'  ]

    let g:UltiSnipsEditSplit="vertical"
end

