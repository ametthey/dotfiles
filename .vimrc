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
set backspace=indent,eol,start " delete space or indent
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
set history=1000
execute pathogen#infect()
filetype plugin indent on
let g:airline_solarized_bg='dark' " permet d'avoir les couleurs solarized pour la barre d'informations du bas (airline)
colorscheme solarized8


" ------------------------ VIM PLUG ------------------------ "
call plug#begin('~/.vim/plugged')
    Plug 'ap/vim-css-color'
    Plug 'cohama/lexima.vim'
    " Taboo : for renaming tag (and other)
    Plug 'gcmt/taboo.vim'
    " ctrlP : fuzzy awesome search
    Plug 'kien/ctrlp.vim'
    Plug 'mattn/emmet-vim'
    Plug 'mbbill/undotree'
    Plug 'scrooloose/nerdtree'
    Plug 'sheerun/vim-polyglot'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'tomtom/tcomment_vim'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-surround'
    Plug 'valloric/youcompleteme'
    Plug 'vim-airline/vim-airline'
call plug#end()


" ------------------------ CUSTOM KEYS ------------------------ "

let mapleader = ","
:imap jj <Esc>
nnoremap <leader>h :set filetype=html<cr>
nnoremap <leader>p :set filetype=php<cr>
nnoremap <leader>s :set hlsearch<cr>
" open terminal in a vertical split
nnoremap <leader>q :vertical terminal<cr>
" Save vimrc, reload it and run PlugInsall
nnoremap <leader>r :w<cr>:source $MYVIMRC<cr>:PlugInstall<cr>
" Save vimrc and reload it
nnoremap <leader>d :w<cr>:source $MYVIMRC<cr>
" Save current file and open CtrlP
nnoremap <leader>hh :w<cr>:CtrlPTag<cr>
" Move to the bottom window
nnoremap <C-J> <C-W><C-J>
" Move to the top window
nnoremap <C-K> <C-W><C-K>
" Move to the left window
nnoremap <C-L> <C-W><C-L>
" Move to the right window
nnoremap <C-H> <C-W><C-H>
" Pre-populate a split command with the current directory
nmap <leader>v :vnew <C-r>=escape(expand("%:p:h"), ' ') . '/'<cr>
" on file save, remove all unwanted whitespace
" https://vim.fandom.com/wiki/Remove_unwanted_spaces
autocmd BufWritePre * %s/\s\+$//e
" rename current tab with dev
nnoremap <leader>td :TabooRename dev<cr>
" rename current tab with serve
nnoremap <leader>ts :TabooRename serve<cr>


" ------------------------ NERDTREE ------------------------ "
nmap <leader>n :NERDTree<cr>

" ------------------------ ctrlP ------------------------ "
let g:ctrlp_custom_ignore = 'node_modules'
" let g:ctrlp_custom_ignore = '\v[\/]\.(node_modules|packaged)$'
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
