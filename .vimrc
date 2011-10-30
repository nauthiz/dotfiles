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
" ���ޥ�ɤ�ɽ��
set showcmd
" ���ֹ��ɽ��
"set number
" ʸ�������ɤȲ���ʸ���򥹥ơ�������ɽ��
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
" �ե�����Υ��֤���
set tabstop=4
" �Խ���ǤΥ��֤���
set softtabstop=4
" ����ǥ�Ȥ���
set shiftwidth=4
" ���֤� shiftwidth �����
set smarttab
" ���֤򥹥ڡ�����Ÿ�����ʤ�
set noexpandtab
" ���ޡ��Ȥʥ���ǥ��
set smartindent
" ��ưŪ�˥���ǥ��
set autoindent
" ����ǥ�Ȥ� shiftwidth �˴ݤ��
set shiftround
" �Хå����ڡ����Ǥ�������
set backspace=2
" ���ޥ�ɥ饤���䴰����
set wildmenu
" �ۥ磻�ȥ��ڡ������ޤ��֤��ʤ�
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

" python����
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab

" ���פʥ��֤������֤�ɽ�� (������ư��ʤ�)
"syntax match InvisibleJISX0208Space "��" display containedin=ALL
"highlight InvisibleJISX0208Space term=underline ctermbg=Blue guibg=Blue
"syntax match InvisibleTrailedSpace "[ \t]\+$" display containedin=ALL
"highlight InvisibleTrailedSpace term=underline ctermbg=Red guibg=Red
"syntax match InvisibleTab "\t" display containedin=ALL

