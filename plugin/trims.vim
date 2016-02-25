fun! TrimWhitespace()
  let l:save_cursor = getpos('.')
  %s/\s\+$//e
  call setpos('.', l:save_cursor)
endfun

" trim end of line space hook
autocmd BufWritePre <buffer> call TrimWhitespace()
