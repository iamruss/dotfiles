Plug 'dracula/vim', { 'as': 'dracula' }

augroup DraculaOverrides
    autocmd!
    autocmd ColorScheme dracula highlight DraculaBoundary guibg=#21222C
    autocmd ColorScheme dracula highlight DraculaDiffDelete ctermbg=235 guibg=#21222C
    autocmd ColorScheme dracula highlight DraculaComment cterm=italic gui=italic
    autocmd User PlugLoaded ++nested colorscheme dracula
augroup end

