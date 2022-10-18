" PLUGINS ---------------------------------------------------------------- {{{

:call plug#begin()

Plug 'junegunn/fzf'

Plug 'wakatime/vim-wakatime'

Plug 'joshdick/onedark.vim' "The One Dark Theme

Plug 'mbbill/undotree' "Creates an undo tree

Plug 'preservim/nerdtree' "File browser inside vim

Plug 'jdhao/better-escape.vim' "remaps esc key to jj

Plug 'vim-airline/vim-airline'

Plug 'sheerun/vim-polyglot'

Plug 'valloric/youcompleteme'

call plug#end()

" }}}

"Startup Setttings {{{
let mapleader=" " "Maps Leader to space
set encoding=UTF-8
set mouse=a "Allows mouse usage inside vim.
set number
syntax on
colorscheme onedark
let g:airline_theme='onedark'
" }}}

"Plugin Shortucts
map <Leader>f :NERDTreeToggle Github<CR>
map <Leader>z :UndotreeToggle<CR>

let g:better_escape_shortcut = 'jj'
let g:better_escape_interval = 250

" Persistent_undo
set undodir=~/.vim/undodir"
set undofile
let g:undotree_WindowLayout = 2

"General Shortcuts
nnoremap S :%s//g<Left><Left>
noremap <Leader>r :w<CR>:! node %<CR>
