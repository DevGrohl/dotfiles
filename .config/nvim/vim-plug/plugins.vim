" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Theme OneDark
    Plug 'joshdick/onedark.vim'

    " Airline status bar
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " IntendLine
    Plug 'Yggdroot/indentLine'

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'

    " Auto Complete
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'Shougo/neco-syntax'
    
    " Allows to navigate DeoComplete with tabs
    Plug 'ervandew/supertab' 
    
    " File Explorer
    Plug 'scrooloose/NERDTree'

    " Better commenting
    Plug 'scrooloose/nerdcommenter'
    
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " Async code analyzer
    Plug 'w0rp/ale'

    " Syntax Highlight
    Plug 'sheerun/vim-polyglot'
    
    " FZF File Indexer
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'

    " Better searching
    Plug 'haya14busa/incsearch.vim'

    " UNIX commands
    Plug 'tpope/vim-repeat'

    " Better Git
    Plug 'tpope/vim-fugitive'               " Provides Git commands
    Plug 'airblade/vim-gitgutter'           " Git Diff
    Plug 'xuyuanp/nerdtree-git-plugin'      " Show file git status in NERDTree
call plug#end()

" Config theme
set termguicolors "True Colors
colorscheme onedark

" Config Airline Status Bar
let g:airline#extensions#tabline#enabled = 1   "Show open buffers as tabs
let g:airline#extensions#tabline#fnamemod = ':t' "Show only the filename
let g:airline_powerline_fonts = 1                " Load powerline font and symbols
set noshowmode                                    " Don't show current mode

" IndentLine Exceptions
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help']       "Exceptions
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']

" Config NERDtree
map <F2> :NERDTreeToggle<CR> "Remap NERDTree toggle
let g:NERDTreeChDirMode = 2  "

" Deoplete config
let g:deoplete#enable_at_startup = 1
let g:SuperTabDefaultCompletionType = '<c-n>'
" Close preview documentation window if existst
augroup deopleteCompleteDoneAu
  autocmd!
  autocmd CompleteDone * silent! pclose!
augroup END

" ALE Config
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" FZF Config
let g:fzf_commands_expect = 'alt-enter'               " Execute commands with alt-enter
let g:fzf_history_dir = '~/.local/share/fzf-history'  " Save search history
nnoremap <C-p> :Files<CR>                             " Start searching with CTRL+p

" INC Search Config
" " Remapping
map / <Plug>( incsearch-forward )
map ? <Plug>( incsearch-backward )
let g:incsearch#auto_nohlsearch = 1                   " Remove results after searching

" NERDCommenter Config
let g:NERDSpaceDelims = 1                             " Adds one space after a comment
let g:NERDTrimTrailingWhitespace = 1                  " Removes spaces after removing a comment

" GitGutter Config
set updatetime=250
