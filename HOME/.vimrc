"Different cursors for different modes
let &t_SI = "\1\e[6 q\2"
let &t_SR = "\1\e[4 q\2"
let &t_EI = "\1\e[2 q\2"

"Filetypes
filetype plugin on
autocmd FileType c,cpp,sh,python,cs,prolog,haskell setlocal expandtab
autocmd FileType c,cpp,sh,python,cs,prolog,haskell setlocal autoindent smartindent
autocmd FileType c,cpp,sh,python,cs,prolog setlocal shiftwidth=4 tabstop=4
autocmd FileType haskell setlocal shiftwidth=2 tabstop=2
autocmd FileType c,cpp,sh,python,cs,vim,tex,prolog,haskell syntax on
autocmd BufRead,BufNewFile *.learn setlocal autoindent

"Max code line lenght marker
"https://superuser.com/questions/249779/how-to-setup-a-line-length-marker-in-vim-gvim
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

set nohlsearch
set splitright
set splitbelow
set tw=79

"VimPlug
call plug#begin('~/.local/share/nvim/plugged/')
Plug 'preservim/nerdtree'
call plug#end()

"Bash-like file name autocompletion
"https://stackoverflow.com/a/526940
set wildmode=longest,list,full
set wildmenu
