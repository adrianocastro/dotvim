set cursorline   " highlight current line
" set cursorcolumn " highlight current column
set laststatus=2 " always show the status bar
set number
set ruler
set textwidth=78

" Show tabs, eol and trailing chars
set listchars=tab:▸\ ,trail:·,precedes:<,extends:>,eol:¬
" Show invisibles
set list

syntax on    " enable syntax highlighting
" disable syntax highlighting if in diff mode
if &diff
    syntax off
endif

" Load indent files, to automatically do language-dependent indenting
filetype plugin indent on
