set nocompatible " use Vim settings

syntax on

"----------- colors and colorscheme -----
set t_Co=256 " use the terminal with 256 colors
let g:solarized_style="dark"
colorscheme solarized
"colorscheme zellner
"hi cCustomFunc  ctermfg=2 cterm=bold
"set background=dark
"colorscheme molokai
"colorscheme wombat
"colorscheme wargrey

"----------- basic ----------------------
set mouse=a " for using the mouse
set ruler " displays the 'ruler at the bottom right of the screen
set number " precede each line with its line number
set nobackup " don't keep backup after close
set autoread " read files when other programs change them
" set nowrap " no line wrapping
set showcmd " show the input of an *incomplete* command
"set foldnestmax=1
"set foldmethod=syntax " folding stuff
set lazyredraw

"---------- wildmenu --------------------
set wildmenu
set wildmode=longest:full

set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.luac                           " Lua byte code
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.pyc                            " Python byte code
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store?                      " OSX bullshit

"----------- status line ----------------
set laststatus=2

set statusline=%F%m%r%h%w
set statusline+=%=(%{&ff}/%Y)
set statusline+=\ (line\ %l\/%L,\ col\ %c) 

"----------- search ---------------------
set incsearch " show 'best match so far' as you type
set hlsearch " hilight the items found by the search
set ignorecase " ignores case of letters on searches
set smartcase " Override the 'ignorecase' option if the search pattern contains upper case characters

" search will center on the line it's found in.
" caution as it makes imposible to write n or N
" as first letter using snippets
map N Nzz 
map n nzz

"----------- indentation ----------------
set autoindent
set smartindent
set expandtab
set smarttab

set shiftwidth=4
set tabstop=4
set softtabstop=4
set shiftround

"----------- scroll ---------------------
set scrolloff=3 " scroll when cursor gets within 3 characters of top/bottom edge
set sidescrolloff=5 " scroll when cursor gets within 5 characters of left/right edge

"---Para hacer funcionar los snippets----
filetype plugin on

"---Chorraditas para Tagbar--------------
map <F7> :TagbarToggle<CR> " mapeamos F7 para que arranque Tagbar
