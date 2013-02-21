" XXX:
"source ~/.exrc

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
"set autoindent
" インデントを shiftwidth に丸める
set shiftround
" バックスペースでいろいろ削除
set backspace=2
" コマンドライン補完する
set wildmenu
" ホワイトスペースで折り返さない
set nolinebreak

"
"set encoding=japan
" 
set fileencodings=iso-2002-jp,utf-8,euc-jp,cp932

"if &encoding !=# 'utf-8'
"	set encoding=japan
"endif
"set fileencoding=japan
"if has('iconv')
"	let s:enc_euc = 'euc-jp'
"	let s:enc_jis = 'iso-2022-jp'
"	" iconvがJISX0213に対応しているかをチェック
"	if iconv("\x87\x64\x87\x6a", 'cp932', 'euc-jisx0213') ==# "\xad\xc5\xad\xcb"
"		let s:enc_euc = 'euc-jisx0213'
"		let s:enc_jis = 'iso-2022-jp-3'
"	endif
"	" fileencodingsを構築
"	if &encoding ==# 'utf-8'
"		let s:fileencodings_default = &fileencodings
"		let &fileencodings = s:enc_jis .','. s:enc_euc .',cp932'
"		let &fileencodings = &fileencodings .','. s:fileencodings_default
"		unlet s:fileencodings_default
"	else
"		let &fileencodings = &fileencodings .','. s:enc_jis
"		set fileencodings+=utf-8,ucs-2le,ucs-2
"		if &encoding =~# '^euc-\%(jp\|jisx0213\)$'
"			set fileencodings+=cp932
"			set fileencodings-=euc-jp
"			set fileencodings-=euc-jisx0213
"			let &encoding = s:enc_euc
"		else
"			let &fileencodings = &fileencodings .','. s:enc_euc
"		endif
"	endif
"	unlet s:enc_euc
"	unlet s:enc_jis
"endif

:set fileformats=unix,dos,mac 

"map <F2> <ESC>:bp<CR>
"map <F3> <ESC>:bn<CR>
"map <F4> <ESC>:bw<CR>
"map <F12> <ESC>:nohlsearch<CR>
nnoremap j gj
nnoremap k gk
"colorscheme torte

" カーソル移動
"nnoremap j k
"nnoremap k j

" vim -b : edit binary using xxd-format!
augroup Binary
	au!
	au BufReadPre  *.bin let &bin=1
	au BufReadPost *.bin if &bin | %!xxd
	au BufReadPost *.bin set ft=xxd | endif
	au BufWritePre *.bin if &bin | %!xxd -r
	au BufWritePre *.bin endif
	au BufWritePost *.bin if &bin | %!xxd
	au BufWritePost *.bin set nomod | endif
augroup END

" コメント自動挿入
" s1:/*,mb:*,ex:*/
" set formatoptions=qro

" マッチオプション
set matchpairs=(:),{:},[:],<:>


" syntax keyword xType pb_int8 pb_uint8 pb_int16 pb_uint16 pb_int32 pb_uint32 pb_int64 pb_uint64 pb_byte pb_bool

" highlight link xType Type

" 改行でなく表示単位で行移動
"nnoremap j gj
"nnoremap k gk

" コマンドライン行での行移動
"cnoremap <C-F> <Right>
"cnoremap <C-B> <Left>

highlight MatchParen ctermfg=Black

" set cursorline
" highlight CursorLine gui=underline

" set cursorcolumn
"highlight CursorColumn guibg=blue

hi PmenuSel ctermbg=white ctermfg=blue
hi Pmenu  ctermbg=white ctermfg=black
" 補完機能設定
set completeopt=menu,preview,longest,menuone

" パレンマッチ
hi MatchParen ctermbg=cyan ctermfg=black

" フォールディング
set foldmethod=syntax

set tags+=~/.vimsystags

" Javascript
autocmd FileType html,javascript :set omnifunc=javascriptcomplete#CompleteJS

set wildmode=list:longest


"" python仕様
"set tabstop=8
"" file内のtab文字が意味するブランク数。他のプログラムとの互換性からもtabstopは8のまま変更せずに、編集中の<Tab>コマンドをオプションsofttabstopで制御すべきである。
"set softtabstop=4
"" 文書を編集する際に、<Tab>が置き換わるスペースの数。 <Tab>や<BS>を入力すると、あたかもtabstopがsofttabstopで定義した数に設定されているように振る舞う。 したがってこの設定では、<Tab>に対して４個のスペースが挿入され、 <BS>が入力されると４個の連続したスペースが一度に消去される。
"set shiftwidth=4
"" 自動インデントの際に用いられる各ステップの幅。 cindent, >> <<コマンドでも利用される。
"set expandtab
"" <Tab>の制御に空白文字を用いる。 tab文字を入力するにはCTRL-V<Tab>を用いる。
"set smarttab
"" onにすると、行の先頭でタブを入力するとshiftwidthで定義したブランクが入力され、 それ以外のときにはtabstopを用いる。offのときは、常にtabstopで定義したブランクが入力され、 shiftwidthはテキストを"<<"や">>"などのコマンドで左右にシフトする場合だけ用いられる。
"" 実際に文書中にtabと空白のどちらが挿入されるかはexpandtabの設定で決まる。
"" tabstopではなくてsofttabstopを見ている？
"set autoindent
"" autoindent

filetype on
filetype indent on
filetype plugin on

" python用
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab

" scheme (gauche) 用
autocmd FileType scheme set nosmartindent nocindent lispwords+=define-class,define-method,let-values

" tab navigation like firefox
":nmap <C-S-tab> :tabprevious<cr>
":nmap <C-tab> :tabnext<cr>
":map <C-S-tab> :tabprevious<cr>
":map <C-tab> :tabnext<cr>
":imap <C-S-tab> <ESC>:tabprevious<cr>i
":imap <C-tab> <ESC>:tabnext<cr>i
":nmap <C-t> :tabnew<cr>
":imap <C-t> <ESC>:tabnew<cr>

":map th :tabnext<CR>
":map tl :tabprev<CR>
":map tn :tabnew<CR>
":map td :tabclose<CR>

" タブ関連
map <F2> <ESC>:tabprev<CR>
map <F3> <ESC>:tabnext<CR>

" QuickFix関連
map <F4> <ESC>:cprevious<CR>
map <F5> <ESC>:cnext<CR>A

" アクティブタブ
"hi TabLineSel ctermbg=black ctermfg=white
hi TabLineSel ctermbg=blue ctermfg=white

" 非アクティブタブ
"hi TabLine ctermbg=white ctermfg=white
hi TabLine ctermbg=black ctermfg=white

" タブバー表示設定
"   0: 非表示
"   1: 2つ以上のタブを開いた場合のみ
"   2: 常に表示
set showtabline=2

" タブ表示設定
set tabline=%!MyTabLine()
function MyTabLine()
  let s = ''
  for i in range(tabpagenr('$'))
    if i + 1 == tabpagenr()
      let s .= '%#TabLineSel#'
    else
      let s .= '%#TabLine#'
    endif
    let s .= '%' . (i+1) . 'T'
    let s .= ' ' . (i+1) . (1==getwinvar(i+1,'&modified')?'[+]':'') . ' %{MyTabLabel(' . (i+1) . ')} '
  endfor
  let s .= '%#TabLineFill#%T'
  if tabpagenr('$') > 1
    let s .= '%=%#TabLine#%999Xclose'
  endif
  return s
endfunction

" タブラベルを取得
function MyTabLabel(n)
  let buflist = tabpagebuflist(a:n)
  let winnr = tabpagewinnr(a:n)
  "return bufname(buflist[winnr - 1])
  return substitute(bufname(buflist[winnr - 1]), '.\+\/', '', 'g')  " ファイル名のみ表示するように変更
endfunction


" Diff関連
set diffexpr=IgnoreSpaceDiff()
function IgnoreSpaceDiff()
  let opt = ""
  if &diffopt =~ "icase"
    let opt = opt . "-i "
  endif
  if &diffopt =~ "iwhite"
    let opt = opt . "-b "
  endif
  silent execute "!diff --ignore-all-space -a " . opt .
        \  v:fname_in . " " . v:fname_new .
        \  " > " . v:fname_out
endfunction

" 無駄な空白をハイライト
highlight WastedSpace ctermbg=6
"match WastedSpace /t|s+$|　/
match WastedSpace /\(\t\|\s\)\+$\|　/
"match WastedSpace /[^\t]\+\(\t\)/

" * で検索しても次の候補に移動させない
nmap * *N


" howm-mode.vim
" QFixHowmキーマップ
let QFixHowm_Key = 'g'

let g:howm_dir = '~/var/howm'
"let g:howm_filename  = '%Y/%m/%Y-%m-%d-%H%M%S.howm'
let g:howm_filename  = '%Y/%m/%Y-%m-%d-%H%M%S.howm'
let g:howm_findprg = ""
let g:howm_grepprg = ""
let g:howm_instantpreview = 1
" 非0の時はメモファイルが空になったら削除する (初期値：0）
let g:howm_removeEmpty = 1

" javascriptlint
"au FileType javascript set makeprg=jsl\ -nologo\ -nofilelisting\ -nosummary\ -nocontext\ -process\ % 
"au FileType javascript set errorformat=%f(%l):\ %m
"au QuickfixCmdPost make call PostQuickfixCmd()
"au BufWritePost *.js sil! make! | redraw!
"
"function! PostQuickfixCmd()
"  if len(getqflist()) > 0
"    cw
"  else
"    cclose
"  endif
"endfunction

" Align.vimを日本語環境で利用可能にする
let g:Align_xstrlen = 3


" yankling
set viminfo+=!


" bufftabs
"noremap <C-left> :bprev<CR>
"noremap <C-right> :bnext<CR>

""バッファタブにパスを省略してファイル名のみ表示する(buftabs.vim)
"let g:buftabs_only_basename = 1
""バッファタブをステータスライン内に表示する
"let g:buftabs_in_statusline = 1


" NERD_commenter
let NERDSpaceDelims = 1
let NERDShutUp = 1
let NERDRemoveExtraSpaces = 1

" FuzzyFinder
"nnoremap <silent> <C-n>      :FuzzyFinderBuffer<CR>
nnoremap <silent> <C-f><C-b> :FuzzyFinderBuffer<CR>
"nnoremap <silent> <C-m>      :FuzzyFinderFile <C-r>=expand('%:~:.')[:-1-len(expand('%:~:.:t'))]<CR><CR>
nnoremap <silent> <C-f><C-f> :FuzzyFinderFile <C-r>=expand('%:~:.')[:-1-len(expand('%:~:.:t'))]<CR><CR>
"nnoremap <silent> <C-j>      :FuzzyFinderMruFile<CR>
"nnoremap <silent> <C-k>      :FuzzyFinderMruCmd<CR>
"nnoremap <silent> <C-p>      :FuzzyFinderDir <C-r>=expand('%:p:~')[:-1-len(expand('%:p:~:t'))]<CR><CR>
"nnoremap <silent> <C-f><C-d> :FuzzyFinderDir<CR>
"nnoremap <silent> <C-b>      :FuzzyFinderBookmark<CR>
nnoremap <silent> <C-f><C-t> :FuzzyFinderTag!<CR>
"nnoremap <silent> <C-f><C-g> :FuzzyFinderTaggedFile<CR>
"noremap  <silent> g]         :FuzzyFinderTag! <C-r>=expand('<cword>')<CR><CR>
"nnoremap <silent> <C-f>b     :FuzzyFinderAddBookmark<CR>
"nnoremap <silent> <C-f><C-e> :FuzzyFinderEditInfo<CR>

" VIlisp
autocmd BufRead *.lsp,*.lisp,*.scm so ~/source/plugin/vimscript/VIlisp/VIlisp-2.3/VIlisp.vim

" 挿入モード時のEnter、ノーマルモード時のo、Oによるコメントアウトの自動挿入を抑制
set formatoptions-=ro

" ↑の設定がftpluginによって打ち消されるようであれば、↓のコメントアウトを解除する
"autocmd FileType * set formatoptions-=ro

" Pythonでコメント行を入力するとカーソルが先頭に戻ってしまうのを修正
au BufEnter *.py setlocal indentkeys+=0#

" QFixHowm
set runtimepath+=~/source/plugin/vimscript/QFixHowm/qfixapp
"set runtimepath+=~/source/plugin/vimscript/howm_vim

" 何故かMacVimが.gvimrcをロードしてくれないので
" ここでGUI関連の設定もロード
if has('gui_macvim')
	" タブを常に表示
    set showtabline=2

	" IMを無効化
    "set imdisable

	" 透明度を指定
    set transparency=10
    set antialias
    "set guifont=Monaco:h14

	" e: Aqua風タブ
	set guioptions=e

	colorscheme torte

	" 透明度
	set transparency=10
endif

" snipMate
"set runtimepath+=~/source/plugin/vimscript/snipMate/snipMate

" zencoding.vim
let g:user_zen_expandabbr_key = '<c-e>'

"let g:use_zen_complete_tag = 1

"let g:user_zen_settings = { 
"\  'indentation' : '	', 
"\  'perl' : { 
"\    'aliases' : { 
"\      'req' : 'require ' 
"\    }, 
"\    'snippets' : { 
"\      'use' : "use strict\nuse warnings\n\n", 
"\      'warn' : "warn \"|\";", 
"\    } 
"\  } 
"\} 

let g:user_zen_settings = { 
\  'indentation' : '	'
\} 

" ,is: シェルを起動
nnoremap <silent> ,is :VimShell<CR>
" ,ipy: pythonを非同期で起動
nnoremap <silent> ,ipy :VimShellInteractive python<CR>
" ,irb: irbを非同期で起動
nnoremap <silent> ,irb :VimShellInteractive irb<CR>
" ,ig: goshを非同期で起動
nnoremap <silent> ,ig :VimShellInteractive gosh<CR>
" ,ss: 非同期で開いたインタプリタに現在の行を評価させる
vmap <silent> ,ss :VimShellSendString<CR>
" 選択中に,ss: 非同期で開いたインタプリタに選択行を評価させる
nnoremap <silent> ,ss <S-v>:VimShellSendString<CR>

" The prefix key.
"nnoremap    [unite]   <Nop>
"nmap    f [unite]
"
"nnoremap <silent> [unite]c  :<C-u>UniteWithCurrentDir -buffer-name=files buffer file_mru bookmark file<CR>
"nnoremap <silent> [unite]b  :<C-u>UniteWithBufferDir -buffer-name=files -prompt=%\  buffer file_mru bookmark file<CR>
"nnoremap <silent> [unite]r  :<C-u>Unite -buffer-name=register register<CR>
"nnoremap <silent> [unite]o  :<C-u>Unite outline<CR>
"nnoremap  [unite]f  :<C-u>Unite source<CR>

nnoremap    [unite]   <Nop>
nmap    ,u [unite]

nnoremap <silent> [unite]c  :<C-u>UniteWithCurrentDir -buffer-name=files buffer file_mru bookmark file<CR>
nnoremap <silent> [unite]b  :<C-u>UniteWithBufferDir -buffer-name=files -prompt=%\  buffer file_mru bookmark file<CR>
nnoremap <silent> [unite]r  :<C-u>Unite -buffer-name=register register<CR>
nnoremap <silent> [unite]o  :<C-u>Unite outline<CR>
nnoremap <silent> [unite]f  :<C-u>Unite file buffer file_mru<CR>
nnoremap  [unite]s  :<C-u>Unite source<CR>

autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()"{{{
	" Overwrite settings.

	nmap <buffer> <ESC>      <Plug>(unite_exit)
	imap <buffer> jj      <Plug>(unite_insert_leave)
	"imap <buffer> <C-w>     <Plug>(unite_delete_backward_path)

	" Start insert.
	"let g:unite_enable_start_insert = 1
endfunction"}}}

let g:unite_source_file_mru_limit = 200

" 入力モードで開始する
let g:unite_enable_start_insert=1
" バッファ一覧
noremap <C-U><C-B> :Unite buffer<CR>
" ファイル一覧
noremap <C-U><C-F> :UniteWithBufferDir -buffer-name=files file<CR>
" ファイル一覧 (再帰)
noremap <C-U><C-R> :Unite file_rec<CR>
" 最近使ったファイルの一覧
noremap <C-U><C-M> :Unite file_mru<CR>
" レジスタ一覧
noremap <C-U><C-Y> :Unite -buffer-name=register register<CR>
" ファイルとバッファ
noremap <C-U><C-U> :Unite buffer file_mru<CR>
" Grep
noremap <C-U><C-G> :Unite grep<CR>
" ジャンプ
noremap <C-U><C-J> :Unite jump<CR>
" 行
noremap <C-U><C-L> :Unite line<CR>
" ブックマーク
noremap <C-U><C-K> :Unite bookmark<CR>
" アウトライン
noremap <C-U><C-O> :Unite -vertical -winwidth=30 -no-quit outline<CR>
" 全部
noremap <C-U><C-A> :Unite UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>
" ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>

" Vundle.vim
set rtp+=~/.vim/vundle.git/
call vundle#rc()

Bundle 'Shougo/unite.vim'
Bundle 'Shougo/vimproc'
Bundle 'Shougo/vimfiler'
Bundle 'thinca/vim-ref'
Bundle 'thinca/vim-quickrun'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'desert256.vim'

" オリジナルは 'h1mesuke/unite-outline' だけど vital#of('unite') でエラーが発生するのでフォーク版を使用
Bundle 'Shougo/unite-outline'

