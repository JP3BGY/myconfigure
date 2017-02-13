let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_camel_case = 1
let g:neocomplete#auto_complete_delay = 30

let g:neocomplete#enable_fuzzy_completion = 1

let g:neocomplete#auto_completion_start_length = 4
let g:neocomplete#manual_completion_start_length = 0
let g:neocomplete#min_keyword_length = 3

let g:neocomplete#enable_auto_select = 0
let g:neoinclude#disable_auto_complete = 0

let g:neocomplete#enable_auto_delimiter = 1
let g:neocomplete#max_list = 100
if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif
if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {}
endif

let g:neocomplete#sources#omni#input_patterns.python = 
            \ '[^. *\t]\.\w*\|\h\w*'
let g:neocomplete#force_omni_input_patterns.c =
            \ '\(#include.*\)\@<![^.[:digit:] *\t]\%(\.\|->\)\w*'
let g:neocomplete#force_omni_input_patterns.cpp =
            \ '\(#include.*\)\@<![^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'

if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns._ = '\h\k*(\?'
