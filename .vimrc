
set nu
set paste
set autoindent
set expandtab

" Tab文字を画面上で展開する文字数
set tabstop=2

" Tabキー入力時に挿入される空白の量，0の場合はtabstopと同じ
set softtabstop=0

" 自動インデントに使われる空白の幅
set shiftwidth=2

" 入力したTab文字を半角スペースとして入力する
set expandtab

" 自動でインデント
set autoindent

" '<'や'>'でインデントする際に'shiftwidth'の倍数に丸める
set shiftround

" 新しい行のインデントを現在行と同じ量に
set smartindent

" スワップファイルを作らない
set noswapfile

" モードラインを有効にする
set modeline

" 不可視文字表示
set list

" 括弧の対応をハイライト
set wildmenu

" コマンド補完モードの設定
set wildmode=longest:full

" 最後まで検索したら先頭へ戻る
set wrapscan

" 大文字小文字無視
set ignorecase

" 大文字ではじめたら大文字小文字無視しない
set smartcase

" インクリメンタルサーチ
set incsearch

" 検索文字をハイライト
set hlsearch

" 括弧の対応をハイライト
set showmatch

" 入力中のコマンドを表示
set showcmd

" 現在のモードを表示
set showmode

" 行番号表示
set number

" 画面幅で折り返さない
set nowrap


" 隠しファイルをデフォルトで表示させる
let NERDTreeShowHidden = 1

" デフォルトでツリーを表示させる
" autocmd VimEnter * execute 'NERDTree'

nnoremap <C-n> gt
nnoremap <C-p> gT

"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/
 
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
 
" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'
 
" 追加のプラグイン"
" NERDTreeを設定
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'taichouchou2/html5.vim' " HTML5シンタックス
NeoBundle 'hail2u/vim-css3-syntax' " CSS3シンタックス
NeoBundle 'othree/yajs.vim' " ES6 arrow syntax
NeoBundle 'othree/javascript-libraries-syntax.vim' "js syntax
"NeoBundle 'taichouchou2/vim-javascript' " JavaScriptシンタックス
NeoBundle 'kchmck/vim-coffee-script' " CoffeeScriptシンタックス
NeoBundle 'scrooloose/nerdcommenter' " コメントアウト 
NeoBundle 'vim-scripts/AutoComplPop' " コードヒント
NeoBundle 'cakebaker/scss-syntax.vim' " Sassシンタックス
NeoBundle 'Townk/vim-autoclose' " 閉じカッコを自動化 
NeoBundle 'vim-scripts/textmanip.vim' " 選択したテキストの移動 
NeoBundle 'mattn/emmet-vim'
NeoBundle 'thinca/vim-quickrun' 
NeoBundle "osyo-manga/shabadou.vim"
NeoBundle 'rust-lang/rust.vim'
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }


" プラグイン毎の設定
" vimにcoffeeファイルタイプを認識させる
au BufRead,BufNewFile,BufReadPre *.coffee   set filetype=coffee
" インデントを設定
autocmd FileType coffee     setlocal sw=2 sts=2 ts=2 et


call neobundle#end()
 
" Required:
filetype plugin indent on
 
" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck
 
"-------------------------
" End Neobundle Settings.
"-------------------------

"-------------------------
" Start QuickRunConfig
"-------------------------
let g:quickrun_config = {
\   "_" : {
\     "runner" : "vimproc",
\     "runner/vimproc/updatetime" : 40,
\     "outputter/buffer/split" : ":botright 8sp",
\   },
\   "javascript/node" : {
\     "command": "node",
\   }
\}
"-------------------------
" End QuickRunConfig
"-------------------------


syntax on
