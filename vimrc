"load plugins
execute pathogen#infect()

"filetype detection
filetype plugin on

"style and qol
syntax on
set title
set nocompatible
set ai
set nu
set noerrorbells
set nowrap
set ignorecase
set expandtab
set tabstop=4
set shiftwidth=4
set incsearch
set relativenumber
set noshowmode
set confirm
set t_Co=256
color koehler

"plugin config
let g:ctrlp_cmd='CtrlP :pwd'
let g:airline_theme='night_owl'

"file tab completion
set wildmenu
set wildmode=list:full
set wildcharm=<C-z>
set wildignore=*.OLD,*.swp

"buffer navigation
nnoremap <leader>b :buffer <C-z><S-Tab>
nnoremap <leader>B :sbuffer <C-z><S-Tab>
nnoremap <PageUp>   :bprevious<CR>
nnoremap <PageDown> :bnext<CR>
nnoremap gb :ls<CR>:b<Space>
nmap <silent> <C-x> :bd<CR>

"file search
set path=.,**
nnoremap <leader>f :find *
nnoremap <leader>s :sfind *
nnoremap <leader>v :vert sfind *
nnoremap <leader>t :tabfind *

"forgot to sudo before saving, workaround:  write to stdin, read from stdin, and write to current file
"with root privileges
cnoremap sudow w !sudo tee % > /dev/null

"persistent undo, create directory ~/.vim/undo for this setting to take effect
set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=1000
