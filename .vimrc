inoremap jj <ESC>
vmap <C-c> y
vmap <C-v> p
vmap <C-z> u

nnoremap o i
"cnoremap o i

noremap i k
noremap k j
noremap j h
noremap h b
noremap ; w

noremap <TAB> <TAB>
inoremap <C-j> <LEFT>
"inoremap <C-i> <UP>
inoremap <C-l> <RIGHT>
inoremap <C-k> <DOWN>

nnoremap <C-i> <C-y>
nnoremap <C-k> <C-e>

set ts=4
"set mouse=a
set hlsearch
set autoindent
set number
"set wildmenu
set cursorline

"set spell spelllang=en_us
set nobackup
set autoread
"set list

syntax enable
syntax on

hi Comment ctermfg =blue
