set nocompatible " use Vim settings

syntax on

colorscheme zellner

set ruler " displays the 'ruler at the bottom right of the screen
set number " precede each line with its line number
" set nowrap " no line wrapping

"----------- search ---------------------
set incsearch " show 'best match so far' as you type
set hlsearch " hilight the items found by the search
set ignorecase " ignores case of letters on searches
set smartcase " Override the 'ignorecase' option if the search pattern contains upper case characters
:highlight search guifg=yellow guibg=darkred

"----------- indentation ----------------
set autoindent
set expandtab
set smarttab

set shiftwidth=4
set tabstop=4
set softtabstop=4
set shiftround

"----------- scroll ---------------------
set scrolloff=3 " scroll when cursor gets within 3 characters of top/bottom edge

"---Para hacer funcionar los snippets----
filetype plugin on


"---Chorraditas para Taglist--------------
map <F7> :Tlist<CR> 
    " mapeamos F7 para que arranque Taglist
let Tlist_Exit_OnlyWindow = 1
    " Taglist closes when it's the only window opened
