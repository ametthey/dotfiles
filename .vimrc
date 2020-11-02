" ------------------------ GENERAL SETTINGS ------------------------ "
syntax on
set noerrorbells
set nocompatible
set nu
set background=dark
" set list
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

" Folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2
" start unfolded
set foldlevelstart=99


execute pathogen#infect()
filetype plugin indent on
let g:airline_solarized_bg='dark' " permet d'avoir les couleurs solarized pour la barre d'informations du bas (airline)
colorscheme solarized8

" ------------------------ VIM PLUG ------------------------ "
call plug#begin('~/.vim/plugged')
    " Color Hexadecimal CSS
    Plug 'ap/vim-css-color'
    " Git Wrapper
    Plug 'tpope/vim-fugitive'
    " Fuzzy Search
    Plug 'kien/ctrlp.vim'
    "   A command line fuzzy finder
    " Plug 'junegunn/fzf'
    " Tree File
    Plug 'scrooloose/nerdtree'
    " Status Bar
    Plug 'vim-airline/vim-airline'
    " Surround Tag
    Plug 'tpope/vim-surround'
    " Easy Comment
    Plug 'tomtom/tcomment_vim'
    " Easy Tab Rename
    Plug 'gcmt/taboo.vim'
    " Autoclose Parentheses
    Plug 'cohama/lexima.vim'
    " Emmet Vim
    Plug 'mattn/emmet-vim'
    " Php autocomplete
    Plug 'shawncplus/phpcomplete.vim'
    " The ultimate snippets solution for VIM
    " Plug 'sirver/ultisnips'
    " Coc-vim
    " Plug 'neoclide/coc.nvim', { 'branch': 'release' }

    " install zfz
    Plug 'junegunn/fzf.vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()


" ------------------------ CUSTOM KEYS ------------------------ "

let mapleader = ","
:imap jj <Esc>
nnoremap <leader>h :set filetype=html<cr>
nnoremap <leader>p :set filetype=php<cr>
nnoremap <leader>s :set hlsearch<cr>
" open terminal in a vertical split
nnoremap <leader>q :vertical terminal<cr><c-w>T<c-w>:TabooRename serve<cr>
" Save vimrc, reload it and run PlugInsall
nnoremap <leader>r :w<cr>:source $MYVIMRC<cr>:PlugInstall<cr>
" Save vimrc, reload it run PlugClean after deleting the line with the
" correspondant plug
nnoremap <leader>s :w<cr>:source $MYVIMRC<cr>:PlugClean<cr>
" Save vimrc and reload it
nnoremap <leader>d :w<cr>:source $MYVIMRC<cr>
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

" ------------------------ Moving Lines ------------------------ "
nnoremap <c-j> :m .+1<CR>==
nnoremap <c-k> :m .-2<CR>==
inoremap <c-j> <Esc>:m .+1<CR>==gi
inoremap <c-k> <Esc>:m .-2<CR>==gi
vnoremap <c-j> :m '>+1<CR>gv=gv
vnoremap <c-k> :m '<-2<CR>gv=gv


" ------------------------ NERDTREE ------------------------ "
nmap <leader>n :NERDTree<cr>

" ------------------------ ctrlP ------------------------ "
" let g:ctrlp_custom_ignore = 'node_modules'
let g:ctrlp_custom_ignore = {
    \ 'dir': 'node_modules\|packaged\|dist',
    \ }
nmap <leader>, :CtrlPTag<cr>

" ------------------------ Git Fugitive  ------------------------ "
nnoremap <leader>g :Git <cr>
nnoremap <leader>gaa :Git add .<cr>
nnoremap <leader>gc :Git commit -m "
nnoremap <leader>gs :Git status<cr>
nnoremap <leader>gp :Git push<cr>

" ------------------------ vim javascript  ------------------------ "
let g:javascript_plugin_jsdoc = 1

