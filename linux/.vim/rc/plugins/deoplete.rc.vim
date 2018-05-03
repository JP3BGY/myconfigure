  if !exists('g:deoplete#omni#input_patterns')
      let g:deoplete#omni#input_patterns = {}
  endif
autocmd FileType tex  let g:deoplete#omni#input_patterns.tex = g:vimtex#re#deoplete

