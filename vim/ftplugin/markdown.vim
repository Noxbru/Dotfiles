function! MarkdownLevel()
    let this_line = getline(v:lnum)

    let h = matchstr(this_line, '^#\+')

    if empty(h)
        return '='
    else
        return '>'.len(h)
    endif
endfunction

setlocal foldmethod=expr
setlocal foldexpr=MarkdownLevel()
