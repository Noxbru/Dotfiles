exec '%!column -t' | w

syn match Oddlines  "^.*$" contains=ALL nextgroup=Evenlines skipnl
syn match Evenlines "^.*$" contains=ALL nextgroup=Oddlines skipnl

hi Oddlines ctermbg=236 guibg=#FFFF99
hi Evenlines ctermbg=NONE guibg=#FFCCFF

set nostartofline
