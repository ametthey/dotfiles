" ------------------------ GENERAL SETTINGS ------------------------ "
syntax on
set noerrorbells
set nocompatible
set nu
set background=dark
set cursorline
set relativenumber
set termguicolors
set smartcase
set showmatch
set smartindent
set showmatch
set matchtime=3
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set nobackup
set noswapfile
set incsearch
set splitbelow
set splitright
set textwidth=80
execute pathogen#infect()
filetype plugin indent on
let g:airline_solarized_bg='dark' " permet d'avoir les couleurs solarized pour la barre d'informations du bas (airline)
colorscheme solarized8


" ------------------------ VIM PLUG ------------------------ "
call plug#begin('~/.vim/plugged')
    Plug 'sheerun/vim-polyglot'
    Plug 'mbbill/undotree'
    Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
    Plug 'tpope/vim-fugitive'
    Plug 'cohama/lexima.vim'
    Plug 'tpope/vim-surround'
    Plug 'scrooloose/nerdtree'
    Plug 'valloric/youcompleteme'
    Plug 'kien/ctrlp.vim'
    Plug 'tomtom/tcomment_vim'
    Plug 'vim-airline/vim-airline'
    Plug 'mattn/emmet-vim'
    Plug 'terryma/vim-multiple-cursors'
call plug#end()

" ------------------------ CUSTOM KEYS ------------------------ "

let mapleader = "," 
:imap jj <Esc>
nnoremap <leader>h :set filetype=html<cr>
nnoremap <leader>p :set filetype=php<cr>
nnoremap <leader>s :set hlsearch<cr>
nnoremap <leader>r :w<cr>:source $MYVIMRC<cr>:PlugInstall<cr>
nnoremap <leader>d :w<cr>:source $MYVIMRC<cr>
nnoremap <leader>hh :w<cr>:CtrlPTag<cr>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" ------------------------ NERDTREE ------------------------ "
nmap <leader>n :NERDTree<cr>

" ------------------------ ctrlP ------------------------ "
let g:ctrlp_custom_ignore = 'node_modules'
let g:ctrlp_working_path_mode = 0
nmap <leader>, :CtrlPTag<cr>

" ------------------------ YouCompleteMe ------------------------ "
" Start autocompletion after 4 chars
let g:ycm_min_num_of_chars_for_completion = 4
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_enable_diagnostic_highlighting = 0
" Don't show YCM's preview window [ I find it really annoying ]
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

nnoremap <silent> <leader>jd :YcmCompleter GoTo<CR>
nnoremap <silent> <leader>jf :YcmCompleter FixIt<CR> 

" ------------------------ vim javascript  ------------------------ "
let g:javascript_plugin_jsdoc = 1
" Start autocompletion after 4 chars
"
" ------------------------ lexima  ------------------------ "
