" Map <leader> to ,
let mapleader = ","

nmap <leader>t :CommandT<CR>

" sudo save
nmap <leader>o :w !sudo tee %

" Updated working directory to current file's path
nmap <leader>c :cd %:p:h<CR>

" Toggle NERDtree: <leader>n
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>N :NERDTreeFind<CR>
nmap <leader>m :NERDTreeMirror<CR>

" Toggle invisibles: <leader>l
nmap <leader>l :set list!<CR>
" Toggle gutter (line numbers)
nmap <leader>g :set nu!<CR>
" Clear searches: <leader><space>
nmap <leader><space> :noh<CR>

" Fix indentation
nmap _= :call Preserve("normal gg=G")<CR>

" Strip all trailing whitespace: <leader>w
nmap <silent> <leader>w :call Preserve("%s/\\s\\+$//e")<CR>
" Delete all empty lines: <leader>W
nmap <leader>W :call Preserve("g/^$/d")<CR>

" Use a function instead of a simple search and replace so we can save previous searches and cursor position
function! Preserve(command)
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    execute a:command
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

" in normal mode return inserts a new line below
nmap <CR> o<Esc>
" in normal mode shift-return inserts a new line above
nmap <S-Enter> O<Esc>
" nmap <BS> kJ<Esc>      " in normal mode backspace joins line with previous line
" nmap <S-BS> J<Esc>     " in normal mode shift+backspace joins the next line

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
nmap k gk
nmap <Up> gk
nmap j gj
nmap <Down> gj

" Mimic bash cursor movements in the command line
" Ctrl+a to move cursor to beginning of command-line
cmap <C-A> <Home>
cmap <C-D> <C-H>

" map alt+arrow keys
" these aren't working
" map <Right> w
" map <Left> b
" map command+arrows keys to start/end of line
map [5C $
map [5D ^
