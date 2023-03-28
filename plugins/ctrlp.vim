Plug 'ctrlpvim/ctrlp.vim'
Plug 'gikmx/vim-ctrlposession'

let g:ctrlp_show_hidden = 1
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
let g:ctrlp_working_path_mode = 'a'

if executable('rg')
    set grepprg=rg\ --color=never
    " let g:ctrlp_user_command = '[ $PWD == $HOME ] && echo "In HOME Directory" ||rg %s --files --color=never --glob ""'
    let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
    let g:ctrlp_use_caching = 0
    let g:ctrlp_clear_cache_on_exit = 0
" elseif executable('ag')
"     " Use Ag over Grep
"     set grepprg=ag\ --nogroup\ --nocolor

"     " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
"     let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""' " --ignore filestorage'
else
    if has("win32")
        let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d' " Windows
    else
        let g:ctrlp_user_command = 'find %s -type f'       " MacOSX/Linux
    endif
endif
"CtrlP Obsession mapping
nnoremap <Leader>ss :CtrlPObsession<CR>

