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
augroup php
 au! BufRead,BufNewFile *.ros setfiletype php.html
augroup END
