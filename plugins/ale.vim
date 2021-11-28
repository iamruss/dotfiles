Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'branch': 'release/0.x'
  \ }

Plug 'w0rp/ale'
filetype indent plugin on
let g:ale_fix_on_save = 1
let g:ale_linters_explicit = 1
let g:ale_linters = {
\   'cs':           ['OmniSharp'],
\   'javascript':   ['eslint'],
\ }
let g:ale_fixers = {
\   'cs': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript':   ['prettier'],
\   'less':         ['prettier'],
\   'css':          ['prettier'],
\}
if(has('gui_running'))
    let g:ale_sign_error = '❌'
    let g:ale_sign_warning = '⚠️'
endif


