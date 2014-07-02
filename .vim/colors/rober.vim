" Color scheme
set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif

hi Normal ctermbg=DarkGrey ctermfg=White guifg=White guibg=grey15
hi ErrorMsg term=standout ctermbg=DarkRed ctermfg=White guibg=Red guifg=White
hi IncSearch term=reverse cterm=reverse gui=reverse
hi ModeMsg term=bold cterm=bold gui=bold
hi User1 term=inverse,bold cterm=inverse,bold ctermfg=red gui=bold guifg=white guibg=DarkBlue
hi StatusLineNC term=reverse cterm=reverse gui=none guifg=LightGray guibg=#509050
hi VertSplit term=reverse cterm=reverse gui=reverse guifg=LightGray guibg=DarkBlue
hi Visual term=reverse cterm=reverse gui=reverse guifg=grey30 guifg=fg
hi VisualNOS term=underline,bold cterm=underline,bold gui=underline,bold
hi DiffText term=reverse cterm=bold ctermbg=Red gui=bold 
