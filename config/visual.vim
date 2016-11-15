set cursorline   " highlight current line
" set cursorcolumn " highlight current column
set laststatus=2 " always show the status bar
set number
set ruler

" Show tabs, eol and trailing chars
set listchars=tab:▸\ ,trail:·,precedes:<,extends:>,eol:¬
" Show invisibles
"set list

syntax on    " enable syntax highlighting
" disable syntax highlighting if in diff mode
if &diff
    syntax off
    set diffopt+=iwhite,filler
endif

" status line with: absolute pat, filetype, help, preview, readonly, current
" line and line count, cols and percentage
set statusline=%<%F\ %y%h%w%r%m%=%-14.(%l\/%L,%c%V%)\ %P

if has('gui_running')
    set background=light
else
    set background=dark
    "let g:solarized_termcolors=16
    "let g:solarized_termtrans=1
endif
let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized

call togglebg#map("<F5>")
