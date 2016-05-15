function! CFold()
    let this_line = getline(v:lnum)

    " Matching of braces
    if match(this_line, '{$') >= 0
        return 'a1'
    elseif match(this_line, '{\s*\\\s*$') >= 0
        return 'a1'
    elseif match(this_line, '}') >= 0
        if match(this_line, '{') == -1
            return 's1'
        endif
    " Matching of comments
    elseif match(this_line, '/\*') >= 0
        if match(this_line, '\*/$') == -1
            return 'a1'
        " Matching custom folding
        elseif match(this_line, '>>>') >= 0
            return 'a1'
        elseif match(this_line, '<<<') >= 0
            return 's1'
        endif
    elseif match(this_line, '\*/$') >= 0
        return 's1'
    endif
    return '='
endfunction

setlocal foldmethod=expr
setlocal foldexpr=CFold()
