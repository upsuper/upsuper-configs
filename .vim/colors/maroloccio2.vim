" 本配色方案由 gui2term.py 程序增加彩色终端支持。
" File: maroloccio2.vim

" Description: a colour scheme for Vim (GUI only)

" Scheme: maroloccio2
" Maintainer: Marco Ippolito < m a r o l o c c i o [at] g m a i l . c o m >

" Comment: only works in GUI mode

" Version: v0.0.1, inspired by watermark
" Date: 19  December 2008
" History:
" 0.1.0 Inital upload to vim.org

" ------------------------------------------------------------------------------

highlight clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name="maroloccio2"

" ------------------------------------------------------------------------------

highlight!  Normal        guifg=#8b9aaa       guibg=#1a202a       gui=none ctermfg=103 ctermbg=60 cterm=none
highlight!  Visual        guifg=#0e1219       guibg=#6d5279 ctermfg=60 ctermbg=96 cterm=none
highlight!  StatusLine    guifg=#8b9aaa       guibg=#0e1219 ctermfg=103 ctermbg=60 cterm=none
highlight!  Cursor        guifg=#0e1219       guibg=#8b9aaa ctermfg=60 ctermbg=103 cterm=none
highlight!  CursorLine    guibg=#0e1219 ctermbg=60 cterm=none
highlight!  CursorLine    guibg=#2c3138 ctermbg=60 cterm=none
highlight!  Search        guifg=#0e1219       guibg=#82ade0 ctermfg=60 ctermbg=110 cterm=none
highlight!  PmenuSel      guifg=#0e1219       guibg=#8b9aaa ctermfg=60 ctermbg=103 cterm=none
highlight!  IncSearch     guifg=#0e1219       guibg=#2680af ctermfg=60 ctermbg=25 cterm=none
highlight!  LineNr        guifg=#2c3138       guibg=#0e1219 ctermfg=60 ctermbg=60 cterm=none
highlight!  NonText       guifg=#2c3138 ctermfg=60 ctermbg=60 cterm=none
highlight!  Statement     guifg=#2680af ctermfg=25 ctermbg=60 cterm=none
highlight!  Comment       guifg=#6d5279 ctermfg=96 ctermbg=60 cterm=none
highlight!  Constant      guifg=#82ade0 ctermfg=110 ctermbg=60 cterm=none
highlight!  Todo          guifg=#82ade0       guibg=#0e1219 ctermbg=60 cterm=bold,undercurl
highlight!  Todo          guisp=#2680af       gui=bold,undercurl ctermbg=60 cterm=bold,undercurl
highlight!  Underlined    gui=bold,underline ctermbg=60 cterm=bold,underline
highlight   Error         guifg=#8b9aaa       guibg=#8f3231 ctermfg=103 ctermbg=131 cterm=none
highlight!  Pmenu         guifg=#8b9aaa       guibg=#2c3138 ctermfg=103 ctermbg=60 cterm=none
highlight!  StatusLineNC  guifg=#2c3138       guibg=#8b9aaa ctermfg=60 ctermbg=103 cterm=none
highlight!  VertSplit     guifg=#2c3138       guibg=#8b9aaa ctermfg=60 ctermbg=103 cterm=none
highlight!  link          Boolean             Constant
highlight!  link          Character           Constant
highlight!  link          Conditional         Statement
highlight!  link          CursorColumn        CursorLine
highlight!  link          Define              Statement
highlight!  link          Delimiter           Comment
highlight!  link          Delimiter           Statement
highlight!  link          Exception           Statement
highlight!  link          Float               Constant
highlight!  link          Folded              Pmenu
highlight!  link          Function            Statement
highlight!  link          Include             Statement
highlight!  link          Label               Statement
highlight!  link          Macro               Statement
highlight!  link          Number              Constant
highlight!  link          Operator            Statement
highlight!  link          PreCondit           Statement
highlight!  link          PreProc             Statement
highlight!  link          Repeat              Statement
highlight!  link          Special             Comment
highlight!  link          Special             Statement
highlight!  link          SpecialChar         Comment
highlight!  link          SpecialChar         Statement
highlight!  link          SpecialComment      Comment
highlight!  link          SpecialKey          NonText
highlight!  link          StorageClass        Statement
highlight!  link          String              Constant
highlight!  link          Structure           Statement
highlight!  link          TabLine             StatusLine
highlight!  link          Tag                 Comment
highlight!  link          Tag                 Statement
highlight!  link          Type                Statement
highlight!  link          Typedef             Statement
highlight!  link          WildMenu            StatusLine

" ------------------------------------------------------------------------------
