"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"behave mswin

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
set nowrap
set linebreak
set scrolloff=8
set sidescroll=8

"undo
set undodir=~/.vim/undo
set undofile
"swap
set swapfile
set directory=~/.vim/swap
"backup
set backup
set backupdir=~/.vim/backup

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

"let mapleader = "\<space>"

imap jj <ESC>
imap ;; <ESC>A;<ESC>
imap ,, <ESC>A,<ESC>
" nmap <S-Enter> O<ESC>

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

"autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
filetype plugin indent on
autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType velocity setlocal shiftwidth=4 softtabstop=4 expandtab
""vim-css-color
"let g:cssColorVimDoNotMessMyUpdatetime = 1


"if !empty("$HOME/.localrc")
    ""include local tweaks (e.g. path for specific python versions like
    "source $HOME/.localrc
"endif

let g:netrw_banner = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" To install Plug manager
""" Non-Windows:
""" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
""" Windows:
""" curl -fLo ~/vimfiles/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
source ~/.dotfiles/plugins/tender.vim
source ~/.dotfiles/plugins/airline.vim
source ~/.dotfiles/plugins/commentary.vim
"source ~/.dotfiles/plugins/nerdcommenter.vim
source ~/.dotfiles/plugins/vim-jsx.vim
" source ~/.dotfiles/plugins/vim-obsession.vim
" source ~/.dotfiles/plugins/ctrlp.vim
set path+=**
source ~/.dotfiles/plugins/vim-velocity.vim
source ~/.dotfiles/plugins/vim-vinegar.vim
source ~/.dotfiles/plugins/vim-surround.vim
" source ~/.dotfiles/plugins/vim-easymotion.vim
source ~/.dotfiles/plugins/vim-fugitive.vim
source ~/.dotfiles/plugins/vim-markdown.vim
source ~/.dotfiles/plugins/vim-matchit.vim
source ~/.dotfiles/plugins/vim-repeat.vim
source ~/.dotfiles/plugins/vim-unimpaired.vim
source ~/.dotfiles/plugins/ale.vim
source ~/.dotfiles/plugins/editorconfig.vim
"source ~/.dotfiles/plugins/dracula.vim
"source ~/.dotfiles/plugins/omnisharp.vim
source ~/.dotfiles/plugins/ultisnips.vim
source ~/.dotfiles/plugins/less.vim
source ~/.dotfiles/plugins/css-color.vim
source ~/.dotfiles/plugins/highlight-yank.vim
source ~/.dotfiles/plugins/rust.vim
source ~/.dotfiles/plugins/flutter.vim
" Plug 'prettier/vim-prettier', {
"   \ 'do': 'yarn install --frozen-lockfile --production',
"   \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

call plug#end()
"fire event to notify plugins were loaded - set dracula theme for example, see ~/.dotfiles/plugins/dracula.vim
"doautocmd User PlugLoaded

if (has("termguicolors"))
 set termguicolors
endif
colorscheme tender

let deviceSpecificRc = fnameescape(fnamemodify(expand("$MYVIMRC"), ":p:h") . '\.localrc.vim')
if !empty(glob(deviceSpecificRc))
    exec "source " . deviceSpecificRc
endif
set grepprg=rg\ --vimgrep
set grepformat^=%f:%l:%c:%m
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-flutter',
  \ ]
