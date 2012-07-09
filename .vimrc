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
set fileencodings=UTF-8,GB18030
set shortmess=at
set wildmode=longest,list
set splitright

set noimdisable
set iminsert=0
set imsearch=-1
inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>

set formatoptions+=m

if has("gui")
    set guioptions-=m
    set guioptions-=T
    set guioptions-=r
    set guioptions-=L
    set lines=24 columns=80
    if has("gui_gtk2")
        color warm_grey
    elseif has("gui_macvim")
        color pyte
    end
endif

let g:user_zen_leader_key = '<c-e>'

nmap <silent> @c I/*<ESC>A*/<ESC>
nmap <silent> @d ^xx$xx

if !has("gui_running")
    set t_IE=(B
endif

if has("gui_gtk2")
    set guifont=DejaVu\ Sans\ Mono\ 10
    set guifontwide=WenQuanYi\ MicroHei\ 10
endif

set listchars=eol:¬,tab:▸\ ,trail:~,extends:>,precedes:<
nmap <leader>l :set list!<CR>

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

function! LKMode()
    set softtabstop=8
    set tabstop=8
    set shiftwidth=8
    set noexpandtab
endfunction
