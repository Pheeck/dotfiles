"Different cursors for different modes
let &t_SI = "\1\e[6 q\2"
let &t_SR = "\1\e[4 q\2"
let &t_EI = "\1\e[2 q\2"

"Filetypes
filetype plugin on
autocmd FileType c,sh,python,cs,prolog,haskell setlocal expandtab
autocmd FileType c,sh,python,cs,prolog,haskell setlocal autoindent smartindent
autocmd FileType c,sh,python,cs,prolog setlocal shiftwidth=4 tabstop=4
autocmd FileType haskell setlocal shiftwidth=2 tabstop=2
autocmd FileType c,sh,python,cs,vim,tex,prolog,haskell syntax on
autocmd BufRead,BufNewFile *.learn setlocal autoindent

"https://gcc.gnu.org/wiki/FormattingCodeForGCC
autocmd FileType cpp setlocal cindent cinoptions=>4,n-2,{2,^-2,:2,=2,g0,h2,p5,t0,+2,(0,u0,w1,m1 shiftwidth=2 softtabstop=2 textwidth=79 fo-=ro fo+=cql

"Max code line lenght marker
"https://superuser.com/questions/249779/how-to-setup-a-line-length-marker-in-vim-gvim
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

set number
set nohlsearch
set splitright
set splitbelow
set tw=79
set nohidden

"VimPlug
"Install with this:
"curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.local/share/nvim/plugged/')
Plug 'preservim/nerdtree'
call plug#end()

"Bash-like file name autocompletion
"https://stackoverflow.com/a/526940
set wildmode=longest,list,full
set wildmenu
