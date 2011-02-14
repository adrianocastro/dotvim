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

" Only do this part when compiled with support for autocommands
if has("autocmd")
    " Enable file type detection
    "filetype on
    filetype plugin indent on

    " Syntax of these languages is fussy over tabs Vs spaces
    autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

    " Customisations based on house-style (arbitrary)
    "autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
    "autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
    "autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab

    " Treat .rss files as XML
    autocmd BufNewFile,BufRead *.rss setfiletype xml
endif
