" Highlight Class and Function names
syn match    cCustomParen    "("         contains=cParen
syn match    cCustomFunc     "\w\+\s*("  contains=cCustomParen
syn match    cCustomScope    "::"
syn match    cCustomClass    "\w\+\s*::" contains=cCustomScope

hi def link cCustomFunc  Function
hi def link cCustomClass Function

syn keyword cTodo   NOTE

syn keyword cType   __m64 __m128 __m128i __m128d
syn keyword cType   mpz_t


" FUCK VIM!
" there should be an easier way of doing this...
"syn region cFoldMarkers start='>>>' end='<<<' containedin=cComment contained transparent fold
