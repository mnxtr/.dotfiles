" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number
"highlighting cursorline
set cursorline
"cursor column

set cursorcolumn    

set shiftwidth=4
set tabstop=4
set expandtab
set nobackup
set scrolloff=10

"DISABLE WRAPPER
set nowrap 

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

"disable case_sensitive searching 
set ignorecase
set smartsearch 
set smartcase 


set showcmd 
set history=1500 

" auto completion 
set wildmenu 

"bash like completion for VIM.
set wildmode=list:longest 


" plug
   let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
    if empty(glob(data_dir . '/autoload/plug.vim'))
      silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
      autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif

 

" Custom Scripts {{{

    autocmd! 
    autocmd filetype vim setlocal foldmethod=marker 
    autocmd filetype vim setlocal foldmethod=markdown 
    autocmd filetype vim setlocal foldmethod=bash 
    autocmd filetype vim setlocal foldmethod=rust 
    autocmd filetype vim setlocal foldmethod=lua


"}}} 

" status bar {{{
    
"}}}

call plug#begin('~/.vim/plugged') 

Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }






