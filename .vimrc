set nocompatible

set nu

set hidden
set noswapfile
set noundofile
syntax enable
set browsedir=buffer
set modeline
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set shiftround

set wildmenu
set wildmode=longset:full

if has('win32') || has('win64')
  set termencoding=cp932
else
  set termencoding=utf-8
endif

"set encoding=utf-8
