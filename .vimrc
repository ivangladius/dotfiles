call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'captbaritone/better-indent-support-for-php-with-html'
Plug 'gko/vim-coloresque'
Plug 'arcticicestudio/nord-vim'
Plug 'preservim/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'StanAngeloff/php.vim'

call plug#end()

syntax off
set shortmess+=A

let b:PHP_default_indenting = 1

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

map <C-c> :w <CR> :!gcc % -o %< && ./%< <CR>

nnoremap <C-r> :NERDTreeToggle<CR>
" fix ^G in nerdtree
let g:NERDTreeNodeDelimiter = "\u00a0"

" FZF
execute "set <M-a>=\ea"
nnoremap <M-a> :Lines <CR>

execute "set <M-s>=\es"
nnoremap <M-s> :Buffer <CR>

execute "set <M-d>=\ed"
nnoremap <M-d> :Files<CR>

execute "set <M-w>=\ew"
nnoremap <M-w> :Ag<CR>




imap <Esc> <Esc>`^



set expandtab           " enter spaces when tab is pressed
set textwidth=120       " break lines when line length increases
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new
"  line
"
"  " make backspaces more powerfull
set backspace=indent,eol,start
"
set ruler                           " show line and column number
set showcmd             " show (partial) command in status line

