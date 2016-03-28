" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.

" Plugins needed:
" ag.vim

set encoding=utf-8

" BUNDLES
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

"Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'git://github.com/scrooloose/nerdtree.git'
Plugin 'git://github.com/scrooloose/nerdcommenter.git'
Plugin 'git://github.com/docunext/closetag.vim.git'
Plugin 'git://github.com/Raimondi/delimitMate.git'
Plugin 'git://github.com/tpope/vim-fugitive.git'
Plugin 'git://github.com/mbbill/undotree.git'
Plugin 'git://github.com/scrooloose/syntastic.git'
"Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on

runtime! archlinux.vim

" Airline configurations
let laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" enable syntax processing
syntax enable

" number of visual spaces per TAB
set tabstop=4

" number of spaces in tab when editing

set softtabstop=4

" tabs are spaces
set expandtab

" show line numbers
set number

" show last command in bottom
"set showcmd

" highlight current line
set cursorline

" load filetype-specific indent files
filetype indent on

" Autocomplete
set wildmenu

" redraw only when needed
set lazyredraw

" highlight matching [{()}]
set showmatch

" SEARCH
" search as characters are entered
set incsearch

" hightlight matches
set hlsearch

" turn off search highlight
nnoremap <leader><space> : nohlsearch<CR>

" enable folding
" FOLDING
set foldenable

" open most folds by default
set foldlevelstart=10

" nested fold max
set foldnestmax=10

" space open/close folds
nnoremap <space> za

" fold based on indent level
set foldmethod=indent

" MOVEMENT
" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

" higlight last inserted text
nnoremap gV `[v`]

" SHORTCUTS
" leader is comma <,>
let mapleader=","

" save session
nnoremap <leader>s :mksession<CR>
nnoremap <leader>S :mksession!<CR>

" open ag.vim
nnoremap <leader>a :Ag

" open NERDTree
"autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

"NERDCommenter
filetype plugin on

" Undotree
nnoremap <F5> :UndotreeToggle<cr>

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
