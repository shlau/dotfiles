filetype plugin on
syntax on
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

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_cmd='CtrlP :pwd'

"file tab completion
set wildmenu
set wildmode=list:longest
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

