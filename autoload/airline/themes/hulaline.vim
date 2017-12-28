" Theme to mimic the default colorscheme of powerline
" Not 100% the same so it's powerline... ish.
"
" Differences from default powerline:
" * Paste indicator isn't colored different
" * Far right hand section matches the color of the mode indicator
"
" Differences from other airline themes:
" * No color differences when you're in a modified buffer
" * Visual mode only changes the mode section. Otherwise
"   it appears the same as normal mode

" Normal mode                                    " fg             & bg
let s:N1 = [ '#af87ff' , '#080808' , 141 , 232 ] " lavender				& darkestgray
let s:N2 = [ '#808080' , '#121212' , 244 , 233 ] " lightgray      & gray4
let s:N3 = [ '#ffffff' , '#121212' , 231 , 233 ] " white          & gray4

" Insert mode                                    " fg             & bg
let s:I1 = [ '#ff005f' , '#080808' , 197 , 232 ] " brightred 			& darkestgray
let s:I2 = [ '#808080' , '#121212' , 244 , 233 ] " lightgray      & gray4
let s:I3 = [ '#ffffff' , '#121212' , 231 , 233 ] " white          & gray4

" let s:I1 = [ '#005f5f' , '#ffffff' , 23  , 231 ] " darkestcyan    & white
" let s:I2 = [ '#5fafd7' , '#0087af' , 74  , 31  ] " darkcyan       & darkblue
" let s:I3 = [ '#87d7ff' , '#005f87' , 117 , 24  ] " mediumcyan     & darkestblue

" Visual mode                                    " fg             & bg
let s:V1 = [ '#afff00' , '#080808' , 154 , 232 ] " brightgreen    & darkestgray
let s:V2 = [ '#121212' , '#303030' , 233 , 236 ] " gray4          & gray2
let s:V3 = [ '#ffffff' , '#121212' , 231 , 233 ] " white          & gray4

" Replace mode                                   " fg             & bg
let s:RE = [ '#ff005f' , '#080808' , 197 , 232 ] " brightred      & darkestgray

let g:airline#themes#hulaline#palette = {}

let g:airline#themes#hulaline#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#hulaline#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#hulaline#palette.insert_replace = {
      \ 'airline_a': [ s:RE[0]   , s:I1[1]   , s:RE[1]   , s:I1[3]   , ''     ] }

let g:airline#themes#hulaline#palette.visual = {
      \ 'airline_a': [ s:V1[0]   , s:V1[1]   , s:V1[2]   , s:V1[3]   , ''     ] }

let g:airline#themes#hulaline#palette.replace = copy(airline#themes#hulaline#palette.normal)
let g:airline#themes#hulaline#palette.replace.airline_a = [ s:RE[0] , s:RE[1] , s:RE[2] , s:RE[3] , '' ]


let s:IA = [ s:N2[0] , s:N3[1] , s:N2[2] , s:N3[3] , '' ]
let g:airline#themes#hulaline#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)

