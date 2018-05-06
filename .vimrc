" !========== 設定 ========== "
set fenc=utf-8 " 文字コードをUFT-8に設定
set nobackup   " バックアップファイルを作らない
set noswapfile " スワップファイルを作らない

" !========== 表示関連 ========== "
set cursorline        " 現在の行を強調表示
set showmatch         " 括弧の対応をハイライト
set showcmd           " 入力中のコマンドを表示
set number            " 行番号表示
set wrap              " 画面幅で折り返す
set list              " 不可視文字表示
set listchars=tab:▸\ ,trail:~,eol:↲  " 不可視文字の表示方法
set notitle           " タイトル書き換えない
set scrolloff=5       " 行送り
syntax on             " syntax
colorscheme iceberg   " colorscheme
set laststatus=2      " ステータスラインを常に表示
set ruler             " カーソルが何行目の何列目に置かれているかを表示する
" 全角スペースハイライト
highlight ZenkakuSpace ctermbg=6 guibg=white
match ZenkakuSpace /\s\+$\|　/

" !========== 検索関連 ========== "
set wrapscan   " 最後まで検索したら先頭へ戻る
set ignorecase " 大文字小文字無視
set smartcase  " 大文字ではじめたら大文字小文字無視しない
set incsearch  " インクリメンタルサーチ
set hlsearch   " 検索文字をハイライト

" !========== NeoBundle設定 ==========
" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif
if &compatible
  set nocompatible               " Be iMproved
endif
" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'
" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

" !========== ファイル操作 ==========↲
NeoBundle 'https://github.com/scrooloose/nerdtree.git'
NeoBundle 'wincent/Command-T'

" !========== Syntax関連 ==========
NeoBundle 'Markdown'

" !========== Markdown Preview関連 ==========
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'
au BufRead,BufNewFile *.md set filetype=markdown

call neobundle#end()
" Required:
filetype plugin indent on
" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" !========== ショートカット関連 ==========
" Ctrl+t でNERDTreeの起動
nnoremap <silent><C-t> :NERDTreeToggle<CR>
" Ctrl+f でCommand-Tの起動
nnoremap <silent><C-f> :CommandT<CR>
" Ctrl+p でMarkdown Previewの起動
nnoremap <silent><C-p> :PrevimOpen<CR>
