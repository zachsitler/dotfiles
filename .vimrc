" Don't bother with vi compatibility
set nocompatible

" Enable syntax highlighting
syntax enable

" NeoBundle
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/zachsitler/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/Users/zachsitler/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/unite.vim'

NeoBundle 'KeitaNakamura/neodark.vim'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'christoomey/vim-tmux-navigator'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'dart-lang/dart-vim-plugin'
NeoBundle 'elzr/vim-json'
NeoBundle 'fatih/vim-go'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'groenewege/vim-less'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'jdkanani/vim-material-theme'
NeoBundle 'jiangmiao/auto-pairs'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'kristijanhusak/vim-hybrid-material'
NeoBundle 'nono/vim-handlebars'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'rking/ag.vim'
NeoBundle 'rust-lang/rust.vim'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'svermeulen/vim-easyclip'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-ragtag'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-surround'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'vim-scripts/Align'
NeoBundle 'vim-scripts/greplace.vim'
NeoBundle 'vim-scripts/matchit.zip'
NeoBundle 'arcticicestudio/nord-vim'
NeoBundle 'larsyencken/vim-drake-syntax'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

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
set background=dark
color solarized

" Airline theme
"let g:airline_theme='nord'

" Custom ignore options for CtrlP
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|dist'

" Extensions
hi VertSplit ctermbg=black

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
nnoremap <leader><space> :call whitespace#strip_trailing()<CR>
nnoremap <leader>g :GitGutterToggle<CR>
nnoremap <silent> <space> :nohlsearch<Bar>:echo<CR>
noremap <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

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
