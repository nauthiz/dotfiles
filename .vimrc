" ignore the ignorecase option if the user went to the trouble of
" entering uppercase characters.
set smartcase
" incremental search - shows what was found
set incsearch
" highlights what it found
set hlsearch
" show status line
set laststatus=2
set guifontset=-*-fixed-medium-r-normal--16-*-*-*-c-*,*-r-*

" do not make backup file
set nobk
" Turn off syntax color
syntax on
" syntax off
set bs=2
" コマンドを表示
set showcmd
" 行番号を表示
"set number
" 文字コードと改行文字をステータスに表示
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
" ファイルのタブの幅
set tabstop=4
" 編集中でのタブの幅
set softtabstop=4
" インデントの幅
set shiftwidth=4
" タブに shiftwidth を使用
set smarttab
" タブをスペースに展開しない
set noexpandtab
" スマートなインデント
set smartindent
" 自動的にインデント
set autoindent
" インデントを shiftwidth に丸める
set shiftround
" バックスペースでいろいろ削除
set backspace=2
" コマンドライン補完する
set wildmenu
" ホワイトスペースで折り返さない
set nolinebreak

"set encoding=euc-jp
"set fileencodings=iso-2022-jp,utf-8,utf-16,ucs-2-internal,ucs-2,cp932,shift-jis,japan

set enc=utf-8
set fenc=utf-8
set fencs=iso-2022-jp,euc-jp,cp932


"map <F2> <ESC>:bp<CR>
"map <F3> <ESC>:bn<CR>
"map <F4> <ESC>:bw<CR>
map <F2> <ESC>:tabprev<CR>
map <F3> <ESC>:tabnext<CR>
nnoremap j gj
nnoremap k gk
"colorscheme torte

"set cursorline
"highlight CursorLine cterm=underline

"set cursorcolumn
"highlight CursorColumn ctermbg=blue

hi PmenuSel ctermbg=white ctermbg=blue
hi Pmenu ctermbg=white ctermbg=black

set termencoding=utf-8

" python専用
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab

" 不要なタブや空白を赤く表示 (正しく動作しない)
"syntax match InvisibleJISX0208Space "　" display containedin=ALL
"highlight InvisibleJISX0208Space term=underline ctermbg=Blue guibg=Blue
"syntax match InvisibleTrailedSpace "[ \t]\+$" display containedin=ALL
"highlight InvisibleTrailedSpace term=underline ctermbg=Red guibg=Red
"syntax match InvisibleTab "\t" display containedin=ALL

