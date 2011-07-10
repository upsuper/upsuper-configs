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
set ignorecase
set smartcase
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

digraph c3 12834
digraph c4 12835
digraph c0 12841

set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
color desert
"set ttyscroll=0

"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.*/

let g:user_zen_leader_key = '<c-e>'
"let g:user_zen_expandabbr_key = '<c-e>'
"let g:use_zen_complete_tag = 1
let g:manpageview_pgm_php = 'pman'

runtime ftplugin/man.vim

nmap <silent> <C-h> :tabprevious<CR>
nmap <silent> <C-l> :tabnext<CR>
imap <silent> <C-h> <ESC><C-h>a
imap <silent> <C-l> <ESC><C-l>a

nmap <silent> @c I/*<ESC>A*/<ESC>
nmap <silent> @d ^xx$xx

"au VimLeave * mksession! ~/.vim/last/session
"au VimLeave * wviminfo! ~/.vim/last/viminfo

nmap <silent> <F10> :mksession! ~/.vim/last/session<CR>
            \:wviminfo! ~/.vim/last/viminfo<CR>
            \:echom "保存成功～"<CR>

nmap <silent> <F12> :source ~/.vim/last/session<CR>
            \:rviminfo ~/.vim/last/viminfo<CR>
            \:echom "载入完毕！"<CR>

nnoremap <silent> <F3> :Rgrep<CR>
let Grep_Skip_Files = '*/libs/*'
let Grep_Default_Filelist = '*.php'
"nmap @f :tabnew search_result<CR>v:!find -type f -not -path '*/libs/*' -and -path '*.php' \| xargs grep 
imap <silent> <expr> <buffer> <CR> pumvisible() ? "<CR><C-R>=(col('.')-1&&match(getline(line('.')), '\\.',
      \ col('.')-2) == col('.')-2)?\"\<lt>C-X>\<lt>C-O>\":\"\"<CR>"
      \ : "<CR>"


if !has("gui_running")
    set t_IE=(B
endif
