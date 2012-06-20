set nocompatible       " don't be backwards compatible with vi
set encoding=utf-8

set title              " set window title to the name of the file being edited
set history=50         " keep 50 lines of command line history
set viminfo='20,\"50   " read/write a .viminfo file (50 lines max)
set modelines=0        " prevent modelines security exploit by disabling it
set ttyfast            " indicates a fast terminal connection
set visualbell         " use visual bell instead of beeping
set showcmd            " show commands as you type them
" set vb t_vb=         " don't beep or flash
set hidden             " allow switching to unwritten buffers


" BACKUPS
"set backup                        " enable backups
"set backupdir=~/.vim/tmp/backup/  " backups
"set directory=~/.vim/tmp/swap/    " swap files


" COMMAND
" Ignore these files when completing names and in Explorer
set wildignore=.svn,CVS,.git,.DS_Store,*.swp
set wildmenu " show menu with possible completions
set wildmode=list:longest


" DISPLAY
set wrap   " wrap lines by default


" INDENTING
set autoindent
set smartindent
" expand all tabs to 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab    " always use spaces instead of tabs
set shiftround   " round indent to multiple of shiftwidth


" SEARCHING
set hlsearch    " highlight searches
set ignorecase  " ignore case
set smartcase   " only ignore case when we type lower case when searching
set incsearch   " highlight search string as you type


" DELETING
set backspace=indent,eol,start   " allow backspacing over everything in insert mode
set t_kb=                      " map backspace key


" MOVING
set scrolloff=3   " screen scroll offset in lines
set showmatch     " show matching brackets (matchpairs used to define pairs)


" EDITING
set pastetoggle=<F3>   " toggle paste mode. Useful to paste from outside vim. Turns off auto stuff.
set nojoinspaces       " only insert one space after a join command

" Only run these if autocommands is supported
if has("autocmd")
    " When editing a file, always jump to the last cursor position
    " http://www.linuxquestions.org/questions/debian-26/remember-last-cursor-position-in-vim-552503/
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal g'\"" |
    \ endif
endif

if $VIM_CRONTAB == "true"
    set nobackup
    set nowritebackup
endif
