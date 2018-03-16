packadd minpac
call minpac#init()
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('tpope/vim-endwise')
call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-rhubarb')
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-rails')
call minpac#add('scrooloose/nerdtree')
call minpac#add('vim-ruby/vim-ruby')
call minpac#add('tpope/vim-bundler')
call minpac#add('skalnik/vim-vroom')
call minpac#add('pangloss/vim-javascript')
call minpac#add('mxw/vim-jsx')
call minpac#add('mattn/emmet-vim')

set nocompatible
syntax enable
set encoding=utf-8
set showcmd
filetype plugin indent on

let mapleader=","

nnoremap <leader>ne :NERDTreeToggle<CR>

set nowrap
set tabstop=2 shiftwidth=2
set expandtab
set backspace=indent,eol,start

set hlsearch
set incsearch
set ignorecase
set smartcase

set list
set listchars=tab:>\ ,eol:¬,trail:·

set number relativenumber

command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
