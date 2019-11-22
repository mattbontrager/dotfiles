set t_Co=256
set termguicolors
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'kien/ctrlp.vim'
Bundle 'christoomey/vim-tmux-navigator'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'othree/yajs.vim'
Plugin 'othree/html5.vim'

call vundle#end()
filetype plugin indent on

syntax on
set autoindent
set ts=4
set nobackup			"don't create pointless backup files
set showmatch
set ignorecase
set hlsearch
set incsearch
set ruler
set laststatus=2
filetype on

" set background=dark
" colorscheme material-theme

set number
set bs=2
set autoindent smartindent
set smarttab
set shiftwidth=4
set noexpandtab
set tabstop=4

filetype indent on			"enable filetype specific indenting

set clipboard=unnamed		"allow yy, etc. to interact with OS X clipboard

let g:ctrlp_custom_ignore='node_modules\|DS_Store\|git\|NERD_*'
let NERDTreeAutoDeleteBuffer=1
let g:NERDTreeWinSize=30
let NERDTreeIgnore=['\NERD_*', '\node_modules', '\.nyc_output']
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <F2> :NERDTreeToggle<CR>
imap <expr> <tab> emmet#expandAbbrIntelligent("/<tab>")

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

au! BufNewFile,BufRead *.svelte set ft=html
