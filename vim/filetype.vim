" user filetype file
if exists("did_load_filetypes")
  finish
endif

augroup filetypedetect

" Gnuplot
au! BufNewFile,BufRead *.plt,*.gnuplot setfiletype gnuplot

" Vala
autocmd BufRead *.vala,*.vapi set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
au BufRead,BufNewFile *.vala,*.vapi setfiletype vala

" Opencl
au BufRead,BufNewFile *.cl setfiletype opencl 
au BufRead * if search('^#include <CL/cl.h>$', 'nw') | setlocal ft=opencl | endif

" Arduino
au! BufRead,BufNewFile *.ino setfiletype arduino
au! BufRead,BufNewFile *.pde setfiletype arduino

" LLVM stuff
au! BufRead,BufNewFile *.ll setfiletype llvm
au! BufRead,BufNewFile *.td setfiletype tablegen

au! BufRead *vimrc setlocal foldmethod=marker

au! BufRead,BufNewFile *.h setfiletype c

augroup END
