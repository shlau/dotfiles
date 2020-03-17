"load plugins
execute pathogen#infect()

"filetype detection
filetype plugin indent on

"style and qol
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
set noshowmode
set confirm
set t_Co=256
color koehler

"plugin config
let g:airline_theme='night_owl'

"file tab completion
set wildmenu
set wildmode=list:full
set wildcharm=<C-z>
set wildignore=*.OLD,*.swp

"split navigation
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

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
nnoremap <leader>e :e %:p<C-z>

"forgot to sudo before saving, workaround:  write to stdin, read from stdin, and write to current file
"with root privileges
cnoremap sudow w !sudo tee % > /dev/null

"persistent undo, create directory ~/.vim/undo for this setting to take effect
set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=1000

"git
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit -v -q<CR>
nnoremap <leader>ga :Gcommit --amend<CR>
nnoremap <leader>gt :Gcommit -v -q %<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>ge :Gedit<CR>
nnoremap <leader>gr :Gread<CR>
nnoremap <leader>gw :Gwrite<CR><CR>
nnoremap <leader>gl :silent! Glog<CR>
nnoremap <leader>gp :Ggrep<Space>
nnoremap <leader>gm :Gmove<Space>
nnoremap <leader>gb :Git branch<Space>
nnoremap <leader>go :Git checkout<Space>

"diff highlighting
highlight DiffAdd    cterm=bold ctermfg=8 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffDelete cterm=bold ctermfg=8 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffChange cterm=bold ctermfg=8 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffText   cterm=bold ctermfg=8 ctermbg=88 gui=none guifg=bg guibg=Red
