set background=light

hi clear
if exists("syntax_on")
	syntax reset
endif

let colors_name = "fav-light"

" Syntax highlighting
hi Statement					cterm=bold
hi Type						cterm=bold
hi Operator	ctermfg=brown			cterm=none
hi StatusLine	ctermfg=white	ctermbg=black	cterm=bold
hi StatusLineNC	ctermfg=white	ctermbg=gray	cterm=none
