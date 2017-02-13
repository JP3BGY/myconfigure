scriptencoding utf-8
set number
set fileencodings=utf-8,iso-2022-jp-3,sjis,euc-jisx0213,euc-jp,sjis
set fileencoding=utf-8
set fileformats=unix,dos,mac
set cmdheight=1
set lsp=-3
set list
set expandtab
set shiftwidth=4
set softtabstop=-1
set tabstop=4
syntax on
autocmd BufNewFile *.pro.cpp 0r $VIM/template/pro.cpp
