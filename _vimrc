" Use light background
set background=light
" Enable backspace
set backspace=2
" Turn off the beep in vim
set visualbell t_vb=
" Turn on line numbering. Turn it off with "set nonu" 
set nu 
set ruler
syntax on
filetype indent on
filetype plugin on
" Define text filetype
augroup filetype
	au! BufRead,BufNewFile *.txt set filetype=text
	au! BufRead,BufNewFile *.tex set filetype=text
	au! BufRead,BufNewFile *.ll set filetype=llvm
	au! BufRead,BufNewFile *.vid set filetype=llvm
	au! BufRead,BufNewFile *.id set filetype=llvm
augroup END
" Highlight search
set hls
set scrolloff=999
set wildmode=full
set wildmenu
" Use default colorscheme
colorscheme default
" Printer option
set printoptions=duplex:on,paper:letter
" replace the dictionary with the coldfusion dictionary.
set dictionary+=/usr/share/dict/words
" turn on completion matching
set complete-=k complete+=k
" and make matching case insensitive.
set ignorecase
"set smartcase  --- this works too.
" special configuration for python
autocmd Filetype python set et tabstop=4 shiftwidth=4 sts=4
autocmd Filetype perl set et tabstop=4 shiftwidth=4 sts=4
" special configuration for c & cpp
autocmd Filetype c,cpp set et cindent tabstop=2 shiftwidth=2 sts=2
" special configuration for text
autocmd Filetype text set tw=80 spell
autocmd Filetype tex set tw=80 expandtab tabstop=4 autoindent shiftwidth=4 sts=4 spell
autocmd Filetype java set tabstop=4 shiftwidth=4
autocmd Filetype lisp set et
autocmd Filetype html set tabstop=2 autoindent shiftwidth=2 sts=2 
autocmd Filetype pascal set cindent tabstop=2 shiftwidth=2
autocmd FileType make set sw=2 sts=2 ts=2
" spell check
let spell_auto_type = "tex"
" uniform clipboard
set clipboard=unnamed
" shellpipe was changed to |tee unexpectedly. Change it back
set makeprg=begin;\ make
set shellpipe=2\>&1;\ end\ \|\ tee
