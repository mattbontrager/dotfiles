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
Plugin 'tpope/vim-commentary'
Plugin 'leafgarland/typescript-vim'
Plugin 'vim-utils/vim-man'
Plugin 'mbbill/undotree'
Plugin 'junegunn/fzf'

Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'joukevandermaas/vim-ember-hbs'
Plugin 'kevinoid/vim-jsonc'

Plugin 'mxw/vim-jsx'

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

set clipboard=unnamed		"allow yy, etc. to interact with OS X clipboard

let g:ctrlp_custom_ignore='node_modules\|DS_Store\|git\|NERD_*|prod|dist'
let NERDTreeAutoDeleteBuffer=1
let g:NERDTreeWinSize=30
let NERDTreeIgnore=['\NERD_*', '\node_modules', '\.nyc_output']

let mapleader = " "

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd FileType json syntax match Comment +\/\/.\+$+

" FORMATTERS
au FileType javascript setlocal formatprg=prettier
au FileType javascript.jsx setlocal formatprg=prettier
au FileType scss setlocal formatprg=prettier\ --parser\ css
au FileType css setlocal formatprg=prettier\ --parser\ css

" map <F2> :NERDTreeToggle<CR>
" imap <expr> <tab> emmet#expandAbbrIntelligent("/<tab>")

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <leader>f :NERDTreeToggle<CR>
nnoremap <leader>u :UndotreeShow<CR>
" project search
nnoremap <leader>ps :Rg<SPACE>

" format json
nnoremap <leader>fj :%!jq --tab .<CR>

" fold block of code ?? who knows if this will work??
nnoremap <leader>fb Va}<CR>zf

" new one
inoremap <silent><expr> <TAB>
       \ pumvisible() ? coc#_select_confirm() :
       \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
       \ <SID>check_back_space() ? "\<TAB>" :
       \ coc#refresh()
 
 function! s:check_back_space() abort
   let col = col('.') - 1
   return !col || getline('.')[col - 1]  =~# '\s'
 endfunction

 let g:coc_snippet_next = '<tab>'
" close new one

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" refresh nerdtree and ctrlp
nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>:CtrlPClearCache<cr>

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
