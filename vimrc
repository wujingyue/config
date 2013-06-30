" Set 256 color
set t_Co=256
" Use light background
set background=light
" Enable backspace
set backspace=2
" Turn off the beep in vim
set visualbell t_vb=
" Turn on line numbering. Turn it off with "set nonu" 
set nu 
set ruler
filetype indent on
filetype plugin on
" Define text filetype
augroup filetype
	au! BufRead,BufNewFile *.txt set filetype=text
	au! BufRead,BufNewFile *.ll,*.vid,*.iid set filetype=llvm
	au! BufRead,BufNewFile *.dart set filetype=dart
	au! BufRead,BufNewFile CMakeLists.txt set filetype=cmake
augroup END
syntax on
" Highlight search
set hls
" Put the current line always in the middle
set scrolloff=999
set wildmode=full
set wildmenu
" always show the status line
set ls=2
" Highlight the bound
set colorcolumn=81
" Enable modeline, e.g., vim: sw=2
set modeline
set modelines=5 " vim in mac sets this to 0 by default
" Choose colorscheme
colorscheme solarized
" Printer option
set printoptions=duplex:on,paper:letter
" Highlight the cursor line
set cursorline
" replace the dictionary with the coldfusion dictionary.
set dictionary+=/usr/share/dict/words
" turn on completion matching
set complete-=k complete+=k
" and make matching case insensitive.
set ignorecase
"set smartcase  --- this works too.
autocmd FileType python,perl set et tabstop=4 shiftwidth=4 sts=4
autocmd FileType ruby set et ts=2 sw=2 sts=2
autocmd FileType yacc,c,cpp set et ci ts=2 sw=2 sts=2
autocmd FileType text set et ts=2 sw=2 sts=2 tw=80 spell
autocmd FileType plaintex,tex set tw=80 spell et ts=2 sw=2 sts=2 noci noai nosi inde=
autocmd FileType java set tabstop=4 shiftwidth=4
autocmd FileType lisp set et
autocmd FileType html set et ts=4 ai sw=4 sts=4
autocmd FileType pascal set ci ts=2 sw=2
autocmd FileType make set sw=2 sts=2 ts=2
autocmd FileType sh set sw=2 sts=2 ts=2
autocmd FileType cmake set sw=2 sts=2 ts=2
autocmd FileType markdown set tw=80 spell
autocmd FileType php,ruby,javascript set et sw=2 sts=2 ts=2
" Remove trailing spaces
function RemoveTrailingSpaces()
	%s/\s\+$//e
	''
:endfunction
" autocmd FileType c,cpp,java,python,perl,sh,make autocmd BufWritePre * :call RemoveTrailingSpaces()
" spell check. disabled because it apparently slows down vim a lot.
" let spell_auto_type = "tex"
" shellpipe was changed to |tee unexpectedly. Change it back
" set makeprg=begin;\ make
" set shellpipe=2\>&1;\ end\ \|\ tee
set makeprg=make\ -w
set shellpipe=2\>&1\|\ tee

map <C-I> :pyf ~/.vim/clang-format.py<CR>
imap <C-I> <ESC>:pyf ~/.vim/clang-format.py<CR>i
