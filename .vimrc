set nocompatible
set backspace=indent,eol,start
set ruler
set showcmd
set incsearch
set mouse=
set hlsearch
syntax on
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
filetype plugin indent on
set smarttab
set foldmethod=indent
set number
set ambiwidth=double
set fileencodings=utf-8,gb18030
set shortmess=atI
set wildmode=longest,list
set splitright

set formatoptions+=m
"set complete=.
"set smartindent
let g:user_zen_leader_key='<c-e>'

" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.*/

nmap <C-h> :tabprevious<CR>
nmap <C-l> :tabnext<CR>
imap <C-h> <ESC><F2>a
imap <C-l> <ESC><F3>a

nmap @c I/*<ESC>A*/<ESC>
nmap @d ^xx$xx
