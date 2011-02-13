" Map <leader> to ,
let mapleader = ","

" Toggle invisibles: <leader>l
nmap <leader>l :set list!<CR>
" Strip all trailing whitespace: <leader>w
nmap <leader>w :%s/\s\+$//<cr>:let @/=''<CR>

" Clear searches: <leader><space>
nmap <leader><space> :noh<cr> 

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
