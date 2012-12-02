set nocompatible
set backspace=indent,eol,start
set ruler
set showcmd
set incsearch
set hlsearch
set mouse=
syntax on
set ignorecase
set smartcase
set foldmethod=indent
set number
set ambiwidth=double
set fileencodings=UTF-8,GB18030
set shortmess=at
set splitright
set listchars=eol:¬,tab:▸\ ,trail:~,extends:>,precedes:<

set wildmode=list:longest
set wildignore=*.o,*.d

" for Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundles
Bundle 'gmarik/vundle'
Bundle 'pangloss/vim-javascript'

" set html indent
let g:html_indent_inctags = 'body,head,tbody'
let g:html_indent_script1 = 'inc'
let g:html_indent_style1 = 'inc'

" indent related
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
filetype plugin indent on

" enable folding
let php_folding=1
let sh_fold_enabled=1
let vimsyn_folding=1
let xml_syntax_folding=1

" input method related
set noimdisable
set iminsert=0
set imsearch=-1

" gui related
if has("gui")
    set guioptions-=m
    set guioptions-=T
    set guioptions-=r
    set guioptions-=L
    set lines=25 columns=85
    if has("gui_gtk2")
        color warm_grey
        set guifont=DejaVu\ Sans\ Mono\ 10
        set guifontwide=WenQuanYi\ MicroHei\ 10
    elseif has("gui_macvim")
        color pyte
    endif
endif

set formatoptions+=m

" key mappings
" for zencoding
let g:user_zen_leader_key = '<c-e>'
" for normal usage
nmap <leader>l :set list!<CR>
" for quickly add & remove comments
nmap <silent> @c I/*<ESC>A*/<ESC>
nmap <silent> @d ^xx$xx
" for quick tab switch
nmap <silent> <D-t> :tabnew<CR>
nmap <D-1> 1gt
nmap <D-2> 2gt
nmap <D-3> 3gt
nmap <D-4> 4gt
nmap <D-5> 5gt
nmap <D-6> 6gt
nmap <D-7> 7gt
nmap <D-8> 8gt
nmap <D-9> 9gt
nmap <silent> <D-0> :tablast<CR>
" for quick window movement
nmap <C-w>m <C-w><Bar><C-w>_

" fix for terminal
if !has("gui_running")
    set t_IE=(B
endif

" set tabstop, softtabstop, shiftwidth at the same time
nmap <C-S-Tab> :Stab<CR>
command! -nargs=* Stab call Stab()
function! Stab()
    let l:tabstop = 1 * input('set tabstop = softtabstop = shiftwidth = ')
    if l:tabstop > 0
        let &l:sts = l:tabstop
        let &l:ts = l:tabstop
        let &l:sw = l:tabstop
    endif
endfunction

if has("autocmd")
    " set indents
    autocmd FileType yaml   setl ts=2 sts=2 sw=2 et
    autocmd FileType python setl ts=4 sts=4 sw=4 et
    autocmd FileType make   setl ts=8 sts=8 sw=8 noet

    " set foldmethods
    autocmd FileType yaml   setl fdm=indent
    autocmd FileType html   setl fdm=indent
    autocmd FileType python setl fdm=indent
    autocmd FileType javascript setl fdm=syntax
    autocmd FileType c      setl fdm=syntax
    autocmd FileType cpp    setl fdm=syntax
    autocmd FileType objc   setl fdm=syntax
    autocmd FileType java   setl fdm=syntax
    autocmd FileType xml    setl fdm=syntax
    autocmd FileType man    setl nofen

    " close im when leave insert mode
    autocmd InsertLeave * set iminsert=0

    " Linux Kernel code style
    function! LKStyle()
        set ts=8 sts=8 sw=8 noet
    endfunction
endif
