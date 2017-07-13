"Dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/zachsitl/config/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/zachsitl/config')
  call dein#begin('/Users/zachsitl/config')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/zachsitl/config/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Add or remove your Bundles here:
  call dein#add('tpope/vim-repeat')
  call dein#add('Valloric/YouCompleteMe')
  call dein#add('ctrlpvim/ctrlp.vim')
  call dein#add('elzr/vim-json')
  call dein#add('jiangmiao/auto-pairs')
  call dein#add('pangloss/vim-javascript')
  call dein#add('scrooloose/nerdcommenter')
  call dein#add('scrooloose/nerdtree')
  call dein#add('svermeulen/vim-easyclip')
  call dein#add('terryma/vim-multiple-cursors')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('vim-scripts/Align')
  call dein#add('rakr/vim-one')
  call dein#add('neomake/neomake')
  call dein#add('christoomey/vim-tmux-navigator')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------"

" Required:
filetype plugin indent on

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
