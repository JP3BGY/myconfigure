set number
set enc=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis
set fileformats=unix,dos,mac
set cmdheight=1
set lsp=-3
set list
set listchars=tab:»-,trail:-,nbsp:%,eol:↲
set expandtab
set shiftwidth=4
set tabstop=4
syntax on
autocmd BufNewFile *.pro.cpp 0r $VIM/template/pro.cpp
