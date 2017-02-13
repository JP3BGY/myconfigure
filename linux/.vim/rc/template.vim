augroup load_templates
    autocmd!
    let s:load_templates_dir='~/.vim/template/'
    let s:load_templates_command="0read ".s:load_templates_dir
    autocmd BufNewFile *.pro.cpp execute s:load_templates_command."pro.cpp"
augroup END
