set nocompatible

set nu
set autoindent
set list
set listchars=tab:^\ ,trail:~
set hlsearch
set nowritebackup
set nobackup
set hidden
set noswapfile
set noundofile
syntax enable
set browsedir=buffer
set modeline
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set shiftround

set wildmenu
set wildmode=longest:full

if has('win32') || has('win64')
  set termencoding=cp932
else
  set termencoding=utf-8
endif

"set encoding=utf-8

filetype off 

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
    call neobundle#rc(expand('~/.vim/bundle'))
endif

" ここにインストールしたいプラグインのリストを書く
NeoBundle 'Shougo/unite.vim'
NeoBundle 'h1mesuke/unite-outline'
NeoBundle 'Align'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'Shougo/neocomplcache'

filetype plugin on
filetype indent on
