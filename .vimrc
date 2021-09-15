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
Plugin 'gertjanreynaert/cobalt2-vim-theme'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'othree/yajs.vim'
Plugin 'othree/html5.vim'
Plugin 'MikeCoder/markdown-preview.vim'

Plugin 'jremmen/vim-ripgrep'
Plugin 'tpope/vim-fugitive'
Plugin 'leafgarland/typescript-vim'
Plugin 'vim-utils/vim-man'
Plugin 'mbbill/undotree'
Plugin 'junegunn/fzf'

call vundle#end()

filetype plugin indent on

syntax on
set autoindent
set ts=4
set nobackup			"don't create pointless backup files
set showmatch
set ignorecase
set nohlsearch
set incsearch
set ruler
set laststatus=2

set guicursor=
set hidden
set undodir=~/.vim/undodir
set undofile

set scrolloff=8
set signcolumn=yes
set updatetime=50

filetype on

" set background=dark
colorscheme cobalt2

if executable('rg')
	let g:rg_derive_root='true'
endif

let g:ale_disable_lsp = 1
let g:ale_fixers = {
\	'*': ['remove_trailing_lines', 'trim_whitespace']
\ }

let g:airline_theme='cobalt2'

" Set this. Airline will handle the rest
let g:airline#extensions#ale#enablbed = 1

set number relativenumber
set bs=2
set autoindent smartindent
set smarttab
set shiftwidth=4
set noexpandtab
set tabstop=4
set noswapfile

filetype indent on			"enable filetype specific indenting

set clipboard=unnamed		"allow yy, etc. to interact with OS X clipboard

let g:ctrlp_custom_ignore='node_modules\|DS_Store\|git\|NERD_*|prod|dist'
let NERDTreeAutoDeleteBuffer=1
let g:NERDTreeWinSize=30
let NERDTreeIgnore=['\NERD_*', '\node_modules', '\.nyc_output']

let mapleader = " "

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" map <F2> :NERDTreeToggle<CR>
imap <expr> <tab> emmet#expandAbbrIntelligent("/<tab>")

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <leader>f :NERDTreeToggle<CR>
nnoremap <leader>u :UndotreeShow<CR>
" project search
nnoremap <leader>ps :Rg<SPACE>

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

set splitbelow
set splitright

au! BufNewFile,BufRead *.svelte set ft=html
set tags=tags
