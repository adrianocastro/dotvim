" Map <leader> to ,
let mapleader = ","

" Toggle invisibles: <leader>l
nmap <leader>l :set list!<CR>

" Clear searches: <leader><space>
nmap <leader><space> :noh<cr>

" Fix indentation
nmap _= :call Preserve("normal gg=G")<CR>

" Strip all trailing whitespace: <leader>w
nmap <silent> <leader>w :call Preserve("%s/\\s\\+$//e")<CR>
" Delete all empty lines: <leader>W
nmap <leader>W :call Preserve("g/^$/d")<cr>

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

" map alt+arrow keys
" these aren't working
" map <Right> w
" map <Left> b
" map command+arrows keys to start/end of line
map [5C $
map [5D ^
