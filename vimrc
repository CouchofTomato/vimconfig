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
call minpac#add('w0rp/ale')
call minpac#add('MarcWeber/vim-addon-mw-utils')
call minpac#add('tomtom/tlib_vim')
call minpac#add('honza/vim-snippets')
call minpac#add('garbas/vim-snipmate')
call minpac#add('tpope/vim-surround')
call minpac#add('jiangmiao/auto-pairs')
call minpac#add('ervandew/supertab')
call minpac#add('kien/ctrlp.vim')
call minpac#add('godlygeek/tabular')
call minpac#add('plasticboy/vim-markdown')
call minpac#add('elixir-editors/vim-elixir')
call minpac#add('christoomey/vim-tmux-navigator')
call minpac#add('christoomey/vim-tmux-runner')
call minpac#add('tpope/vim-dispatch')
call minpac#add('gosukiwi/vim-atom-dark')
call minpac#add('junegunn/fzf')
call minpac#add('junegunn/fzf.vim')

set nocompatible
syntax on
colorscheme atom-dark-256
set encoding=utf-8
set showcmd
filetype plugin indent on

let g:snipMate = { 'snippet_version' : 1 }

autocmd BufNewFile,BufRead *.axlsx set syntax=ruby
autocmd VimResized * :wincmd =

let mapleader="\\"
set autoindent

nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

nnoremap <leader>ne :NERDTreeToggle<CR>
map <leader>vi :tabedit $MYVIMRC<cr>
nmap <leader>so :source $MYVIMRC<cr>

set wrap linebreak nolist
set tabstop=2 shiftwidth=2
set expandtab
set backspace=indent,eol,start

set hlsearch
set incsearch
set ignorecase
set smartcase
nmap <Leader><CR> :nohlsearch<cr>

set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

set list
set listchars=tab:>\ ,eol:¬,trail:·

set number relativenumber

set scrolloff=4          " Keep at least four lines below cursor"

command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

let g:vim_markdown_folding_disabled = 1

nmap <C-P> :FZF<CR>

"-- EMMET CONFIG ==
"redefine trigger key
let g:user_emmet_leader_key="<C-y>"
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \    'extends' : 'jsx',
    \  },
  \}
inoremap <leader><CR> <CR><C-o>==<C-o>O
