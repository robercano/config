
"
" Mouse support
"
set mouse=a

"
" VIM color theme
"
color elflord

"
" C indenting and formating
"
set ts=4
set sw=4
set noexpandtab
set number
set numberwidth=4
let c_space_errors=1 

"
" Folding support
"
" FIXME!!! Split is not working with folding....
"
set foldcolumn=2
set fillchars=
set foldtext=MyFoldText()
function MyFoldText()
	let line = getline(v:foldstart)
	let sub = substitute(line, '/\*\|\*/\|{{{\d=', '', 'g')
	return v:folddashes . sub
endfunction
set foldmarker=#if,#endif
set foldmethod=marker
au BufWinLeave * silent mkview
"au BufWinEnter * silent loadview

"
" Taglist plugin
"
let Tlist_Compact_Format=1
let Tlist_Show_One_File=1
let Tlist_WinWidth=35
let Tlist_Sort_Type="name"
let Tlist_Exit_OnlyWindow=1
let Tlist_Ctags_Cmd='ctags'

"let Tlist_Auto_Open=1		" Activates for all the file types. Instead,
							" filter only the ones we want
"au VimEnter *.c TlistToggle
"au VimEnter *.h TlistToggle
"au VimEnter *.cc TlistToggle
"au VimEnter *.cpp TlistToggle

" Insert a comment(in line).
" map q ^[0i/*^[$a*/
" Delete a comment (in line).
" map g ^[0xx^[$xx 

"
" Filetype plugins support
"
filetype plugin indent on

