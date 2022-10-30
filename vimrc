" PLUGINS ---------------------------------------------------------------- {{{

:call plug#begin()

Plug 'junegunn/fzf'

Plug 'wakatime/vim-wakatime'

Plug 'rakr/vim-one'

Plug 'mbbill/undotree' "Creates an undo tree

Plug 'preservim/nerdtree' "File browser inside vim

Plug 'jdhao/better-escape.vim' "remaps esc key to jj

Plug 'vim-airline/vim-airline'

Plug 'sheerun/vim-polyglot'

Plug 'inkarkat/vim-ingo-library'

Plug 'inkarkat/vim-SpellCheck'

Plug 'valloric/youcompleteme'

Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'vim-syntastic/syntastic'

Plug 'ryanoasis/vim-devicons'

call plug#end()

" }}}

"Startup Setttings {{{
let mapleader=" " "Maps Leader to space
set encoding=UTF-8
set mouse=a "Allows mouse usage inside vim.
set relativenumber
set autoindent
syntax on
colorscheme one
let g:airline_theme='one'
let g:airline_powerline_fonts = 1
"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
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
noremap <Leader>r :w<CR>:!clear<CR>:! node %<CR>

"Syntastic settings

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" Spell Check

hi SpellBad cterm=underline "ctermfg=203 guifg=#ff5f5f
hi SpellLocal cterm=underline "ctermfg=203 guifg=#ff5f5f
hi SpellRare cterm=underline "ctermfg=203 guifg=#ff5f5f
hi SpellCap cterm=underline "ctermfg=203 guifg=#ff5f5f

nnoremap <leader>sp :normal! mz[s1z=`z<CR>
