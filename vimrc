set nocompatible

" Set encoding
set encoding=utf-8

" Enable syntax highlighting
syntax on

" Add line numbers
set number
set ruler

highlight Comment ctermfg=green

" Search related settings
set incsearch
set hlsearch

" Disable code folding
set nofoldenable

set list

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Show trailing spaces and highlight hard tabs
set list listchars=tab:»·,trail:·

set tabstop=4

" Colorscheme see https://github.com/hukl/Smyck-Color-Scheme
colorscheme zellner
