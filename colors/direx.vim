" init
set background=dark
hi clear

" register colorscheme
let g:colors_name='morgana'

" Colors
let s:blackDarker1 = "#171C1C"
let s:blackDarker2 = "#092227"
let s:black        = "#242a2e"
let s:blackLight1  = "#2b363a"
let s:blackLight2  = "#333D3D"
let s:gray         = "#77777A"
let s:white        = "#b4b4b4"
let s:red          = "#E15A60"
let s:green        = "#99c794"
let s:yellow       = "#FAC863"
let s:orange       = "#f3a451"
let s:blue         = "#5bafd7"
let s:magenta      = "#C594C5"
let s:cyan         = "#5FB3B3"

let s:background   = s:black
let s:foreground   = s:white
let s:comments     = s:gray
let s:cursorLine   = s:blackLight1
let s:visualSel    = s:blackLight2
let s:cursorlineNr = s:yellow

" Helper function
function! SetBgColor(group, color)
  exec "hi " . a:group . " guibg=". a:color
endfunction

function! SetFgColor(group, color)
  exec "hi " . a:group . " guifg=". a:color
endfunction

call SetBgColor("Normal", s:background)
call SetFgColor("Normal", s:foreground)

call SetBgColor("Visual", s:visualSel)

" Comment
call SetFgColor("Comment", s:comments)
" TODO
call SetBgColor("Todo", s:cyan)
call SetFgColor("Todo", s:black)

call SetFgColor("EndOfBuffer", s:background)
call SetBgColor("CursorLine", s:cursorLine)
call SetBgColor("CursorColumn", s:cursorLine)
call SetFgColor("LineNr", s:comments)
call SetFgColor("CursorLineNr", s:cursorlineNr)
call SetBgColor("CursorLineNr", s:cursorLine)

" GUI
call SetBgColor("VertSplit", s:blackLight1)
call SetFgColor("VertSplit", s:background)

" Auto completion
call SetBgColor("Pmenu", s:blackDarker1)
call SetBgColor("PmenuSel", s:blackDarker1)
call SetFgColor("PmenuSel", s:cyan)

let s:preproc    = s:blue
let s:function   = s:blue
let s:statement  = s:magenta
let s:string     = s:green
let s:delimiter  = s:cyan
let s:identifier = s:magenta
let s:type       = s:foreground
let s:special    = s:orange
let s:number     = s:orange
let s:operator   = s:cyan
let s:boolean    = s:orange
let s:keyword    = s:magenta

" Syntax
call SetFgColor("PreProc",     s:preproc)
call SetFgColor("Function",    s:function)
call SetFgColor("Statement",   s:statement)
call SetFgColor("String",      s:string)
call SetFgColor("Delimiter",   s:delimiter)
call SetFgColor("Identifier",  s:identifier)
call SetFgColor("Type",        s:type)
call SetFgColor("Special",     s:special)
call SetFgColor("SpecialChar", s:special)
call SetFgColor("Number",      s:number)
call SetFgColor("Operator",    s:operator)
call SetFgColor("Boolean",     s:boolean)
call SetFgColor("Keyword",     s:keyword)

" NvimTree
call SetBgColor("NvimTreeNormal", s:blackDarker1)
call SetFgColor("NvimTreeEndOfBuffer", s:blackDarker1)
