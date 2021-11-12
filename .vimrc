"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"behave mswin

if !empty("$HOME/.localrc.vim")
    "include local tweaks (e.g. path for specific python versions like
    ""set pythonthreedll=python39.dll
    ""set pythonthreehome=C:\\Python39\\
    source $HOME/.localrc.vim
endif

lan mes en_US.UTF-8
set langmenu=en
set encoding=utf-8
set spelllang=ru_yo,en_us
set nospell

set nocompatible
set hidden
syntax on

set keymap=russian-jcukenwin
set iminsert=0
set imsearch=-1


" ================ General Config ====================

set ruler
set number
set relativenumber
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
"set listchars=eol:$,nbsp:_,tab:>-,trail:~,extends:>,precedes:<
"set list listchars=tab:\ \ ,trail:·
"set list listchars=tab:>-,trail:·
set list listchars=tab:»·,trail:·

"================ Completion =======================
set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

set nowrap
set linebreak

if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window (for an alternative on Windows, see simalt below).
  set lines=40 columns=140
endif
" ================ Indentation ======================
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" To install Plug manager
"" Non-Windows:
"" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"" Windows:
"" curl -fLo ~/vimfiles/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'lepture/vim-velocity'
Plug 'scrooloose/nerdcommenter'
if(has("gui_running"))
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
endif
Plug 'OmniSharp/omnisharp-vim'
Plug 'w0rp/ale'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-obsession'
Plug 'ap/vim-css-color'
Plug 'dhruvasagar/vim-prosession'
"Plug 'tpope/vim-unimpaired'
"Plug 'skammer/vim-css-color'
"Plug 'hail2u/vim-css3-syntax'
Plug 'groenewege/vim-less'
Plug 'easymotion/vim-easymotion'
"Plug 'altercation/vim-colors-solarized'
Plug 'vim-scripts/xoria256.vim'
Plug 'adelarsq/vim-matchit'
Plug 'plasticboy/vim-markdown'
Plug 'gikmx/vim-ctrlposession'
"Plug 'vimwiki/vimwiki'
"Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'
"Plug 'michal-h21/vim-zettel'
call plug#end()

" ================ Scrolling ========================
set scrolloff=5         "Start scrolling when we're 3 lines away from margins
set sidescrolloff=10
set sidescroll=1

" ================ Search ===========================
set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

"===================Colorscheme=======================
if has("win32")
    "set guifont=Iosevka_SS05:h14:cRUSSIAN:qDRAFT
    "set guifont=Iosevka_Term_SS05_SmBdEx:h14:cRUSSIAN
    set guifont=JetBrains_Mono:h14:cRUSSIAN
elseif has("gui_macvim")
    "set guifont=Iosevka-SS05-Medium:h18
    set guifont=JetBrains_Mono:h18
endif
set t_Co=256
"set background=dark
"set background=light
"let g:solarized_hitrail=1    "default value is 0
"let g:solarized_contrast="high"    "default value is normal
"let g:solarized_visibility="high"    "default value is normal
"colorscheme solarized
colorschem xoria256
"colorscheme desert

imap jj <ESC>
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>
nmap <F3> i<C-R>=strftime("%Y-%m-%d %I:%M:%S")<CR><Esc>
imap <F3> <C-R>=strftime("%Y-%m-%d %I:%M:%S")<CR>

menu Encoding.koi8-r :e ++enc=koi8-r ++ff=unix<CR>
menu Encoding.windows-1251 :e ++enc=cp1251 ++ff=dos<CR>
menu Encoding.cp866 :e ++enc=cp866 ++ff=dos<CR>
menu Encoding.utf-8 :e ++enc=utf8<CR>
menu Encoding.koi8-u :e ++enc=koi8-u ++ff=unix<CR>

map <F8> :emenu Encoding.

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
let g:ale_fix_on_save = 1

if(has('gui_running'))
    let g:ale_sign_error = '❌'
    let g:ale_sign_warning = '⚠️'
endif

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsJumpForwardTrigger='<tab>'  " tried <c-j> and failed too
let g:UltiSnipsJumpBackwardTrigger='<s-tab>'
let g:MyUltiSnipsSnippetsHome = fnamemodify(expand("$MYVIMRC"), ":p:h")
let g:UltiSnipsSnippetDirectories = [ MyUltiSnipsSnippetsHome.'/.dotfiles/UltiSnips', 'UltiSnips']
let g:UltiSnipsEditSplit="vertical"

let g:OmniSharp_server_stdio = 1

" Timeout in seconds to wait for a response from the server
let g:OmniSharp_timeout = 5
let g:OmniSharp_selector_ui = 'ctrlp'  " Use ctrlp.vim
let g:OmniSharp_popup_options = {
\ 'highlight': 'Normal',
\ 'padding': [1],
\ 'border': [1]
\}

" Don't autoselect first omnicomplete option, show options even if there is only
" one (so the preview documentation is accessible). Remove 'preview', 'popup'
" and 'popuphidden' if you don't want to see any documentation whatsoever.
" Note that neovim does not support `popuphidden` or `popup` yet:
" https://github.com/neovim/neovim/issues/10996
if has('patch-8.1.1880')
  set completeopt=longest,menuone,popuphidden
  " Highlight the completion documentation popup background/foreground the same as
  " the completion menu itself, for better readability with highlighted
  " documentation.
  set completepopup=highlight:Pmenu,border:off
else
  set completeopt=longest,menuone,preview
  " Set desired preview window height for viewing documentation.
  set previewheight=5
endif

" Fetch full documentation during omnicomplete requests.
" By default, only Type/Method signatures are fetched. Full documentation can
" still be fetched when you need it with the :OmniSharpDocumentation command.
"let g:omnicomplete_fetch_full_documentation = 1

" Update semantic highlighting on BufEnter and InsertLeave
"let g:OmniSharp_highlight_types = 2

"augroup omnisharp_commands
    "autocmd!

    "" Show type information automatically when the cursor stops moving
    "autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()

    "" The following commands are contextual, based on the cursor position.
    "autocmd FileType cs nnoremap <buffer> gd :OmniSharpGotoDefinition<CR>
    "autocmd FileType cs nnoremap <buffer> <Leader>fi :OmniSharpFindImplementations<CR>
    "autocmd FileType cs nnoremap <buffer> <Leader>fs :OmniSharpFindSymbol<CR>
    "autocmd FileType cs nnoremap <buffer> <Leader>fu :OmniSharpFindUsages<CR>

    "" Finds members in the current buffer
    "autocmd FileType cs nnoremap <buffer> <Leader>fm :OmniSharpFindMembers<CR>

    "autocmd FileType cs nnoremap <buffer> <Leader>fx :OmniSharpFixUsings<CR>
    "autocmd FileType cs nnoremap <buffer> <Leader>tt :OmniSharpTypeLookup<CR>
    "autocmd FileType cs nnoremap <buffer> <Leader>dc :OmniSharpDocumentation<CR>
    "autocmd FileType cs nnoremap <buffer> <C-\> :OmniSharpSignatureHelp<CR>
    "autocmd FileType cs inoremap <buffer> <C-\> <C-o>:OmniSharpSignatureHelp<CR>

    "" Navigate up and down by method/property/field
    ""autocmd FileType cs nnoremap <buffer> <C-k> :OmniSharpNavigateUp<CR>
    ""autocmd FileType cs nnoremap <buffer> <C-j> :OmniSharpNavigateDown<CR>

    "" Find all code errors/warnings for the current solution and populate the quickfix window
    "autocmd FileType cs nnoremap <buffer> <Leader>cc :OmniSharpGlobalCodeCheck<CR>
"augroup END

augroup omnisharp_commands
  autocmd!

  " Show type information automatically when the cursor stops moving.
  " Note that the type is echoed to the Vim command line, and will overwrite
  " any other messages in this space including e.g. ALE linting messages.
  autocmd CursorHold *.cs OmniSharpTypeLookup

  " The following commands are contextual, based on the cursor position.
  autocmd FileType cs nmap <silent> <buffer> gd <Plug>(omnisharp_go_to_definition)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osfu <Plug>(omnisharp_find_usages)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osfi <Plug>(omnisharp_find_implementations)
  autocmd FileType cs nmap <silent> <buffer> <Leader>ospd <Plug>(omnisharp_preview_definition)
  autocmd FileType cs nmap <silent> <buffer> <Leader>ospi <Plug>(omnisharp_preview_implementations)
  autocmd FileType cs nmap <silent> <buffer> <Leader>ost <Plug>(omnisharp_type_lookup)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osd <Plug>(omnisharp_documentation)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osfs <Plug>(omnisharp_find_symbol)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osfx <Plug>(omnisharp_fix_usings)
  autocmd FileType cs nmap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)
  autocmd FileType cs imap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)

  " Navigate up and down by method/property/field
  autocmd FileType cs nmap <silent> <buffer> [[ <Plug>(omnisharp_navigate_up)
  autocmd FileType cs nmap <silent> <buffer> ]] <Plug>(omnisharp_navigate_down)
  " Find all code errors/warnings for the current solution and populate the quickfix window
  autocmd FileType cs nmap <silent> <buffer> <Leader>osgcc <Plug>(omnisharp_global_code_check)
  " Contextual code actions (uses fzf, vim-clap, CtrlP or unite.vim selector when available)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osca <Plug>(omnisharp_code_actions)
  autocmd FileType cs xmap <silent> <buffer> <Leader>osca <Plug>(omnisharp_code_actions)
  " Repeat the last code action performed (does not use a selector)
  autocmd FileType cs nmap <silent> <buffer> <Leader>os. <Plug>(omnisharp_code_action_repeat)
  autocmd FileType cs xmap <silent> <buffer> <Leader>os. <Plug>(omnisharp_code_action_repeat)

  autocmd FileType cs nmap <silent> <buffer> <Leader>os= <Plug>(omnisharp_code_format)

  autocmd FileType cs nmap <silent> <buffer> <Leader>osnm <Plug>(omnisharp_rename)

  autocmd FileType cs nmap <silent> <buffer> <Leader>osre <Plug>(omnisharp_restart_server)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osst <Plug>(omnisharp_start_server)
  autocmd FileType cs nmap <silent> <buffer> <Leader>ossp <Plug>(omnisharp_stop_server)
augroup END

" Contextual code actions (uses fzf, CtrlP or unite.vim when available)
nnoremap <Leader><Space> :OmniSharpGetCodeActions<CR>
" Run code actions with text selected in visual mode to extract method
xnoremap <Leader><Space> :call OmniSharp#GetCodeActions('visual')<CR>

" Rename with dialog
nnoremap <Leader>nm :OmniSharpRename<CR>
nnoremap <F2> :OmniSharpRename<CR>
" Rename without dialog - with cursor on the symbol to rename: `:Rename newname`
command! -nargs=1 Rename :call OmniSharp#RenameTo("<args>")

nnoremap <Leader>cf :OmniSharpCodeFormat<CR>

" Start the omnisharp server for the current solution
nnoremap <Leader>ss :OmniSharpStartServer<CR>
nnoremap <Leader>sp :OmniSharpStopServer<CR>

" Enable snippet completion
let g:OmniSharp_want_snippet=1

"CtrlP, using git as root marker and ls-files
let g:ctrlp_show_hidden = 1
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
let g:ctrlp_working_path_mode = 'ra'
"let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
"CtrlP no using git ls-files
"let g:ctrlp_working_path_mode = 'a'

if executable('rg')
    set grepprg=rg\ --color=never
    let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
    let g:ctrlp_use_caching = 0
    "else
    "let g:ctrlp_clear_cache_on_exit = 0
    "endif
    " Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
elseif executable('ag')
    " Use Ag over Grep
    set grepprg=ag\ --nogroup\ --nocolor

    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""' " --ignore filestorage'
else
    if has("win32")
        let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d' " Windows
    else
        let g:ctrlp_user_command = 'find %s -type f'       " MacOSX/Linux
    endif
endif
"Airline
"let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#keymap#enabled = 0
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#obsession#enabled = 1
let g:airline_theme='bubblegum'
"vim-css-color
let g:cssColorVimDoNotMessMyUpdatetime = 1

noremap <Up>    <Nop>
noremap <Left>  <Nop>
noremap <Down>  <Nop>
noremap <Right> <Nop>

inoremap <Up>    <Nop>
inoremap <Left>  <Nop>
inoremap <Down>  <Nop>
inoremap <Right> <Nop>
"--- search for help online
if has("win32")
    " https://vim.fandom.com/wiki/Online_documentation_for_word_under_cursor
    function! OnlineDoc()
        if &ft =~ "cpp"
            let s:urlTemplate = "http://doc.trolltech.com/4.1/%.html"
        elseif &ft =~ "ruby"
            let s:urlTemplate = "http://www.ruby-doc.org/core/classes/%.html"
        elseif &ft =~ "perl"
            let s:urlTemplate = "http://perldoc.perl.org/functions/%.html"
        elseif &ft =~ "velocity"
            let s:urlTemplate = "https://community.telligent.com/search?q=%&group=1773"
        else
            return
        endif
        let s:browser = "\"C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe\""
        let s:wordUnderCursor = expand("<cword>")
        let s:url = substitute(s:urlTemplate, "%", s:wordUnderCursor, "g")
        let s:cmd = "silent !start " . s:browser . " " . s:url
        execute s:cmd
    endfunction
    " Online doc search.
    map <silent> <M-d> :call OnlineDoc()<CR>
endif

"CtrlP Obsession mapping
nnoremap <Leader>ss :CtrlPObsession<CR>

set colorcolumn=120
hi ColorColumn ctermbg=darkgrey guibg=grey12
" ----- easymotion settings ------
let g:EasyMotion_do_mapping = 0 " Disable default mappings
" Jump to anywhere you want with minimal keystrokes, with just one key
" binding.
" " `f{char}{label}`
nmap f <Plug>(easymotion-overwin-f)
" " Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

let g:NERDCreateDefaultMappings = 0
let g:NERDToggleCheckAllLines = 1
map <Leader>cc <plug>NERDCommenterToggle

" Vim Wiki
let g:vimwiki_list = [{'path': 'C:\Users\russ\SynologyDrive\wiki', 'syntax': 'markdown', 'ext': '.md'}]
au FileType vimwiki setlocal shiftwidth=6 tabstop=6 noexpandtab

"toggle display of whitespace
noremap <F5> :set list!<CR>
inoremap <F5> <C-o>:set list!<CR>
cnoremap <F5> <C-c>:set list!<CR>

"toggle display of whitespace
noremap <F6> :set wrap!<CR>
inoremap <F6> <C-o>:set wrap!<CR>
cnoremap <F6> <C-c>:set wrap!<CR>

