"colo seoul256-lightDein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
call plug#begin('~/.vim/plugged')

" Add or remove your Bundles here:
Plug 'tpope/vim-repeat'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'elzr/vim-json'
Plug 'jiangmiao/auto-pairs'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'svermeulen/vim-easyclip'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/Align'
Plug 'rakr/vim-one'
Plug 'christoomey/vim-tmux-navigator'
Plug 'rking/ag.vim'
Plug 'w0rp/ale'
Plug 'frankier/neovim-colors-solarized-truecolor-only'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/seoul256.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql'] }

Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Required:
call plug#end()

" Required:
filetype plugin indent on
syntax enable

"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
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

" Settings
set autoindent
set number
set autoread " reload files automatically, e.g. git checkout
set clipboard=unnamed " copy to pbcopy/pbpaste on yy
set cursorline
set expandtab
set shiftwidth=2
set smarttab
set softtabstop=2
set tabstop=2
set list
set listchars=tab:▸\ ,trail:▫
set ruler
set smartcase
set noswapfile
set hlsearch
set laststatus=2
set timeoutlen=1000 ttimeoutlen=0 " Don't wait for the escape sequence
color one
set background=dark

" Custom ignore options for CtrlP
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|dist'

" Set airline theme
let g:airline_theme='one'

" Use deoplete by default.
let g:deoplete#enable_at_startup = 1

" Automatic format
let g:prettier#autoformat = 0
let g:prettier#config#trailing_comma = 'es5'
let g:prettier#config#print_width = 120

autocmd BufWritePre *.js,*.json,*.css,*.scss,*.less,*.graphql PrettierAsync

" Extensions
hi VertSplit ctermbg=black

" trim trailing whitespace on command
function! StripTrailingWhitespace()
  let l:save = winsaveview()
  %s/\s\+$//e
  call winrestview(l:save)
endfunction

" Keyboard shortcuts
let mapleader = ','
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <leader>l :Align
nnoremap <leader>a :Ag<space>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader>t :CtrlP<CR>
nnoremap <leader>T :CtrlPClearCache<CR>:CtrlP<CR>
nnoremap <leader>] :TagbarToggle<CR>
nnoremap <leader><space> :call StripTrailingWhitespace()<CR>
nnoremap <leader>g :GitGutterToggle<CR>
nnoremap <silent> <space> :nohlsearch<Bar>:echo<CR>

" L: Go to end of line
noremap L g_

" H: Go to beginning of line
noremap H ^

" Q: exit
nnoremap Q :q<cr>

" W: save
nnoremap W :w<cr>

" w: save and exit
nnoremap <leader>w :wq<cr>

" q: quit everything
nnoremap <leader>q :qa!<cr>
