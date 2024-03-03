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
filetype indent on
filetype plugin on
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
" Highlight the cursor line
set cursorline
" Make matching case insensitive.
set ignorecase
" Filetype specific formatting.
autocmd FileType python set et tabstop=4 shiftwidth=4 sts=4
autocmd FileType c,cpp,cuda set et ci ts=2 sw=2 sts=2
