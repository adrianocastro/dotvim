" markdown filetype file

if exists("did\_load\_filetypes")
 finish
endif

augroup markdown
 au! BufRead,BufNewFile *.markdown,*.md,*.mkd  setfiletype mkd
augroup END
augroup todo
 au! BufRead,BufNewFile *.todo,*.taskpaper  setfiletype taskpaper
augroup END

autocmd FileType taskpaper setlocal noexpandtab

" Load indent files, to automatically do language-dependent indenting
" Only do this part when compiled with support for autocommands
"if has("autocmd")
"    " Enable file type detection
"    "filetype on
"    filetype plugin indent on
"
"    " Syntax of these languages is fussy over tabs Vs spaces
"    autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
"    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
"    autocmd FileType twiki setlocal ts=3 sts=3 sw=3 expandtab
"
"    " Customisations based on house-style (arbitrary)
"    "autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
"    "autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
"    "autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab
"
"    " Treat .rss files as XML
"    autocmd BufNewFile,BufRead *.rss setfiletype xml
"endif
