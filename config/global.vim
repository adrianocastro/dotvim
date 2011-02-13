set nocompatible       " don't be backwards compatible with silly vi options
set encoding=utf-8

" Backups
set backup                        " enable backups
set backupdir=~/.vim/tmp/backup/  " backups
set directory=~/.vim/tmp/swap/    " swap files

set history=50         " keep 50 lines of command line history
set viminfo='20,\"50   " read/write a .viminfo file (50 lines max)
set modelines=0        " prevent modelines security exploit by disabling it
set ttyfast            " indicates a fast terminal connection

" When editing a file, always jump to the last cursor position
" http://www.linuxquestions.org/questions/debian-26/remember-last-cursor-position-in-vim-552503/
autocmd BufReadPost *
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\   exe "normal g'\"" |
\ endif


"
"
"
" EVERYTHING BELOW THIS LINE IS UNCHECKED
" ---------------------------------------------------------


" Ignore these files when completing names and in Explorer
set wildignore=.svn,CVS,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif


"
" BEHAVIOUR
"
set backspace=indent,eol,start   " allow backspacing over everything in insert mode
set t_kb= " map backspace key
set hidden
set scrolloff=3 " screen scroll offset in lines
set visualbell
set wildmenu " show menu with possible completions
set wildmode=list:longest


"
" TEXT SEARCHING AND EDITING
"
set hlsearch
set ignorecase
set incsearch " For fast terminals can highlight search string as you type
set showmatch
set smartcase " only ignore case when we type lower case when searching

" This is necessary to allow pasting from outside vim. It turns off auto stuff.
" You can tell you are in paste mode when the ruler is not visible
set pastetoggle=<F3>

"
" INDENTING
"
set autoindent
set smartindent
" expand all tabs to 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set wrap

set shiftround
set nojoinspaces

set showcmd " show (partial) command in status line.
set showmode " show (partial) command in status line.

