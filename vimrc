"
" GENERIC
"
set encoding=utf-8
set history=50         " keep 50 lines of command line history
set modelines=0        " prevent modelines security exploit by disabling it
set nocompatible       " don't be backwards compatible with silly vi options
set ttyfast            " indicates a fast terminal connection
set viminfo='20,\"50   " read/write a .viminfo file (50 lines max)
" Ignore these files when completing names and in Explorer
set wildignore=.svn,CVS,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif
let mapleader = ","

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
" Backups
set backupdir=~/.vim/tmp/backup/  " backups
set directory=~/.vim/tmp/swap/    " swap files
set backup                        " enable backups

"
" TEXT SEARCHING AND EDITING
"
set hlsearch
set ignorecase
set incsearch " For fast terminals can highlight search string as you type
set showmatch
set smartcase " only ignore case when we type lower case when searching
nnoremap <leader><space> :noh<cr> " clear searches with <leader><space>
nnoremap <tab> % " jump between brackets with tab instead of %
vnoremap <tab> %

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

set shiftround
set nojoinspaces


"
" APPEARANCE
"
set background=dark
" "Make the completion menus readable
" highlight Pmenu ctermfg=0 ctermbg=3
" highlight PmenuSel ctermfg=0 ctermbg=7
"
" "The following should be done automatically for the default colour scheme
" "at least, but it is not in Vim 7.0.17 at least.
" if &bg == "dark"
"   highlight MatchParen ctermbg=darkblue guibg=blue
" endif

" set cursorline   " highlight current line
" set cursorcolumn " highlight current column
set laststatus=2 " always show the status bar
set wrap
set number
set ruler
set showcmd " show (partial) command in status line.
set showmode " show (partial) command in status line.

set list
set listchars=tab:▸\ ,eol:¬
"Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59
" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" syntax highlighting
syntax on
if &diff
    syntax off
endif

"syntax highlight shell scripts as per POSIX
"not the original Bourne shell which very few use
" let g:is_posix = 1

"flag problematic whitespace (trailing and spaces before tabs)
"Note you get the same by doing let c_space_errors=1 but
"this rule really applys to everything.
highlight RedundantSpaces term=standout ctermbg=red guibg=red
match RedundantSpaces /\s\+$\| \+\ze\t/ "\ze sets end of match so only spaces highlighted

"
" KEY BINDINGS
"
" strip all trailing whitespace in the current file using <leader>w
nnoremap <leader>w :%s/\s\+$//<cr>:let @/=''<CR>

" http://www.vim.org/tips/tip.php?tip_id=550
map ^[OA k
map ^[OB j
map ^[OD h
map ^[OC l
map ^[[3~ x
map ^E $
map ^A ^
map ^[f E
map ^[b b

" useful for moving between long wrapped lines
nnoremap k gk
nnoremap j gj

" map alt+arrow keys
" these aren't working
" map <Right> w
" map <Left> b
" map control+arrows keys to start/end of line
map [5C $
map [5D ^

"
" SPECIAL FUNCTIONS
"

" When editing a file, always jump to the last cursor position
" http://www.linuxquestions.org/questions/debian-26/remember-last-cursor-position-in-vim-552503/
autocmd BufReadPost *
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\   exe "normal g'\"" |
\ endif


"
" UNSORTED
"
" if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
"     set fileencodings=utf-8,latin1
" endif
"Always show cursor position
" if has("autocmd")
"   " enable php syntax highlighting for .ros files
"     augroup ros
"         autocmd BufRead *.ros set filetype=php
"     augroup END
" endif
