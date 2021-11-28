"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"behave mswin

"if !empty("$HOME/.localrc.vim")
    ""include local tweaks (e.g. path for specific python versions like
    """set pythonthreedll=python39.dll
    """set pythonthreehome=C:\\Python39\\
    "source $HOME/.localrc.vim
"endif

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

"" ================ General Config ====================
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
set list listchars=tab:▹\ ,trail:·,extends:▷,precedes:◁
set mouse=a
set nojoinspaces
set splitright
set confirm
set noswapfile
set nobackup
set nowritebackup
set nowrap
set linebreak
set scrolloff=8
set sidescroll=8

set colorcolumn=120
highlight ColorColumn ctermbg=238 guibg=grey

""================ Completion =======================
set wildmode=longest:full,full
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=*DS_Store*
set wildignore+=log/**
set wildignore+=tmp/**
if has("win32")
    set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe
else
    set wildignore+=*/tmp/*,*.so,*.swp,*.zip
end

"" ================ Indentation ======================
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

"" Auto indent pasted text
"nnoremap p p=`]<C-o>
"nnoremap P P=`]<C-o>


"set scrolloff=5         "Start scrolling when we're 3 lines away from margins
"set sidescrolloff=10
"set sidescroll=1

"" ================ Search ===========================
set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

""===================Colorscheme=======================
if has("win32")
    "set guifont=JetBrains_Mono:h14:cRUSSIAN
    set guifont=Iosevka_Term_SS05:h14:cRUSSIAN:qDRAFT
    "set gfn=DejaVu_Sans_Mono_for_Powerline:h14:cANSI:qDRAFT
    "set gfn=DejaVu_Sans_Mono_for_Powerline:h14:cRUSSIAN:qDRAFT
elseif has("gui_macvim")
    set guifont=Iosevka-SS05-Medium:h18
    "set guifont=JetBrains_Mono:h18
endif
set t_Co=256

""set background=dark
""set background=light
""let g:solarized_hitrail=1    "default value is 0
""let g:solarized_contrast="high"    "default value is normal
""let g:solarized_visibility="high"    "default value is normal
""colorscheme solarized
"colorschem xoria256

if(has('gui_running'))
    set lines=35
    set columns=120
end

set guioptions-=T
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" Keymaps
"--------------------------------------------------------

let mapleader = "\<space>"

imap jj <ESC>
imap ;; <ESC>A;<ESC>
imap ,, <ESC>A,<ESC>
nmap <S-Enter> O<ESC>

" Reselect visual selection after indenting
vnoremap < <gv
vnoremap > >gv

"toggle display of whitespace
noremap <Leader><F5> :set list!<CR>
inoremap <Leader><F5> <C-o>:set list!<CR>
cnoremap <Leader><F5> <C-c>:set list!<CR>

" Allow gf to open non-existent files
map gf :edit <cfile><CR>

noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

"nmap <CR> o<Esc>
"nmap <F3> i<C-R>=strftime("%Y-%m-%d %I:%M:%S")<CR><Esc>
"imap <F3> <C-R>=strftime("%Y-%m-%d %I:%M:%S")<CR>

menu Encoding.koi8-r :e ++enc=koi8-r ++ff=unix<CR>
menu Encoding.windows-1251 :e ++enc=cp1251 ++ff=dos<CR>
menu Encoding.cp866 :e ++enc=cp866 ++ff=dos<CR>
menu Encoding.utf-8 :e ++enc=utf8<CR>
menu Encoding.koi8-u :e ++enc=koi8-u ++ff=unix<CR>
"map <F8> :emenu Encoding.

"filetype indent plugin on
"let g:ale_fix_on_save = 1
"let g:ale_linters_explicit = 1
"let g:ale_linters = {
"\   'cs':           ['OmniSharp'],
"\   'javascript':   ['eslint'],
"\ }
"let g:ale_fixers = {
"\   'cs': ['remove_trailing_lines', 'trim_whitespace'],
"\   'javascript':   ['prettier'],
"\   'less':         ['prettier'],
"\   'css':          ['prettier'],
"\}
"let g:ale_fix_on_save = 1

"if(has('gui_running'))
    "let g:ale_sign_error = '❌'
    "let g:ale_sign_warning = '⚠️'
"endif

"" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<tab>"
""let g:UltiSnipsJumpForwardTrigger="<c-b>"
""let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"let g:UltiSnipsJumpForwardTrigger='<tab>'  " tried <c-j> and failed too
"let g:UltiSnipsJumpBackwardTrigger='<s-tab>'
"let g:MyUltiSnipsSnippetsHome = fnamemodify(expand("$MYVIMRC"), ":p:h")
"let g:UltiSnipsSnippetDirectories = [ MyUltiSnipsSnippetsHome.'/.dotfiles/UltiSnips', 'UltiSnips']
"let g:UltiSnipsEditSplit="vertical"

""vim-css-color
"let g:cssColorVimDoNotMessMyUpdatetime = 1


"" ----- easymotion settings ------
"let g:EasyMotion_do_mapping = 0 " Disable default mappings
"" Jump to anywhere you want with minimal keystrokes, with just one key
"" binding.
"" " `f{char}{label}`
"nmap f <Plug>(easymotion-overwin-f)
"" " Turn on case insensitive feature
"let g:EasyMotion_smartcase = 1

"let g:NERDCreateDefaultMappings = 0
"let g:NERDToggleCheckAllLines = 1
"map <Leader>cc <plug>NERDCommenterToggle

""toggle display of whitespace
"noremap <F6> :set wrap!<CR>
"inoremap <F6> <C-o>:set wrap!<CR>
"cnoremap <F6> <C-c>:set wrap!<CR>

"if !empty("$HOME/.localrc")
    ""include local tweaks (e.g. path for specific python versions like
    "source $HOME/.localrc
"endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" To install Plug manager
""" Non-Windows:
""" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
""" Windows:
""" curl -fLo ~/vimfiles/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
source ~/.dotfiles/plugins/airline.vim
source ~/.dotfiles/plugins/nerdcommenter.vim
source ~/.dotfiles/plugins/vim-obsession.vim
source ~/.dotfiles/plugins/ctrlp.vim
source ~/.dotfiles/plugins/vim-velocity.vim
source ~/.dotfiles/plugins/vim-vinegar.vim
source ~/.dotfiles/plugins/vim-surround.vim
source ~/.dotfiles/plugins/vim-easymotion.vim
source ~/.dotfiles/plugins/vim-fugitive.vim
source ~/.dotfiles/plugins/vim-markdown.vim
source ~/.dotfiles/plugins/vim-matchit.vim
source ~/.dotfiles/plugins/vim-repeat.vim
source ~/.dotfiles/plugins/vim-unimpaired.vim
source ~/.dotfiles/plugins/ale.vim
source ~/.dotfiles/plugins/editorconfig.vim
source ~/.dotfiles/plugins/dracula.vim
"source ~/.dotfiles/plugins/omnisharp.vim
source ~/.dotfiles/plugins/battery.vim
"let g:battery#update_tabline = 1    " For tabline.
let g:battery#update_statusline = 1 " For statusline.
""Plug 'tpope/vim-unimpaired'
"if(has("gui_running"))
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
"endif
"Plug 'ap/vim-css-color'
"Plug 'groenewege/vim-less'
call plug#end()
"fire event to notify plugins were loaded - set dracula theme for example, see ~/.dotfiles/plugins/dracula.vim
doautocmd User PlugLoaded

