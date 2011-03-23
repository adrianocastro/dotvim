" markdown filetype file

if exists("did\_load\_filetypes")
 finish
endif

augroup markdown
 au! BufRead,BufNewFile *.markdown,*.md,*.mkd  setfiletype mkd
augroup END
augroup html
 au! BufRead,BufNewFile *.ros setfiletype html
augroup END
