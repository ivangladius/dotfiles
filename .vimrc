call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'captbaritone/better-indent-support-for-php-with-html'
Plug 'gko/vim-coloresque'
Plug 'arcticicestudio/nord-vim'
Plug 'preservim/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'StanAngeloff/php.vim'
Plug 'jpalardy/vim-slime'

call plug#end()

let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"
let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"}



syntax off
set shortmess+=A

let b:PHP_default_indenting = 1

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

map <C-w> :w <CR> :!gcc11 % -o %< && ./%< <CR>
"map <C-m> :w <CR> :!ruby %<CR>

autocmd FileType ruby map <buffer> <C-w> :w<CR>:exec '!ruby' shellescape(@%, 1)<CR>

autocmd FileType python map <buffer> <C-p> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>

nnoremap <C-r> :NERDTreeToggle<CR>
" fix ^G in nerdtree
let g:NERDTreeNodeDelimiter = "\u00a0"


set nohlsearch

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

