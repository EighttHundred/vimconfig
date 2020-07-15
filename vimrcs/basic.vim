"Key Words
    let mapleader=","
    let $CPPTEST="/root/coding/cpp/main.cpp"
"Map
    inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
    inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
    inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"
    inoremap <c-h> <left>
    inoremap <c-j> <down>
    inoremap <c-k> <up>
    inoremap <c-l> <right>
    inoremap <c-x> <Esc>lli<backspace>
    inoremap <c-z> <Esc><c-z>
    inoremap <c-u> <Esc>ui
    inoremap <c-r> <Esc><c-r>i
    nnoremap <leader>cpp :vsplit $CPPTEST<cr>
    nnoremap <expr> <c-x> ExecFile()
"Function
    function! ExecFile()
        execute "!" . expand('%:p')
    endfunction 
"Default Setting
    set incsearch
    set ignorecase
    set nocompatible
    set wildmenu
    set backspace=2
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
    filetype off
    set rtp+=~/.vim/bundle/Vundle.vim
"Plugins    
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'Lokaltog/vim-powerline'
Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'prabirshrestha/async.vim'
Plugin 'prabirshrestha/vim-lsp'
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'scrooloose/nerdtree'
call vundle#end()
filetype plugin indent on
"Hight Light
syntax enable
syntax on
"Scheme
"set background=light
set background=dark
"colorscheme solarized
colorscheme molokai
"Assist Information
set laststatus=2
set ruler
set number
"set cursorline
"set cursorcolumn
set hlsearch
"Ident
filetype indent on
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
"Auto Complete
if executable('clangd')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'clangd',
        \ 'cmd': {server_info->['clangd', '-background-index']},
        \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
        \ })
endif
"File Index
nmap <Leader>fl :NERDTreeToggle<CR>
let NERDTreeWinSize=32
let NERDTreeWinPos="right"
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeAutoDeleteBuffer=1

