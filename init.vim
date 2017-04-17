set runtimepath+=~/.config/nvim/bundle/repos/github.com/Shougo/dein.vim
let s:bundle_dir = expand('~/.config/nvim/bundle')
let s:plugin_dir = s:bundle_dir . '/repos/github.com'
let g:airline_theme='gruvbox'
let g:deoplete#enable_at_startup = 1
let g:python_host_prog = '/usr/bin/python'
let g:netrw_liststyle = 3 " tree list view
" let g:netrw_browse_split = 1 " split file tree
let g:netrw_banner = 0 " get rid of file tree banner
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#whitespace#enabled = 0
if dein#load_state(s:bundle_dir)
     call dein#begin(s:bundle_dir)

     call dein#add(s:plugin_dir . '/Shougo/dein.vim')
     call dein#add('vim-airline/vim-airline')
		 call dein#add('Shougo/deoplete.nvim')
     call dein#add('christoomey/vim-tmux-navigator')
     call dein#add('tpope/vim-commentary')
     call dein#add('morhetz/gruvbox')
     call dein#add('neomake/neomake')
     call dein#add('dojoteef/neomake-autolint')
     call dein#add('vim-airline/vim-airline-themes')
     call dein#add('ctrlpvim/ctrlp.vim.git')

     call dein#end()
     call dein#save_state()
endif

filetype plugin indent on             "Enable plugins and indents by filetype

  let mapleader = "\\"                                                          
  set nocompatible    " get rid of strict vi compatibility!                     
  set relativenumber
  set nu        " line numbering on                                             
  set ai      " autoindent on                                                   
  set noerrorbells    " bye bye bells :)                                        
  set modeline      " show what I'm doing                                       
  set noshowmode      " show the mode on the dedicated line (see above)         
  set nowrap      " no wrapping!                                                
  set ignorecase      " search without regards to case                          
  set backspace=indent,eol,start  " backspace over everything                   
  set fileformats=unix,dos,mac  " open files from mac/dos                       
  set exrc      " open local config files                                       
  set nojoinspaces    " don't add white space when I don't tell you to          
  set ruler     " which line am I on?                                           
  set showmatch     " ensure Dyck language                                      
  set incsearch     " incremental searching                                     
  set colorcolumn=80
  set t_Co=256
  syntax on                                                                     
  set expandtab                                                                 
  set shiftwidth=2                                                              
  set tabstop=2                                                                 
  set background=dark
  set clipboard+=unnamedplus " allow copy to system clipboard
  set hidden
  set confirm

  :color gruvbox

  " divider at column 80
  :hi ColorColumn ctermbg=236 guibg=none
  " highlight OverLength ctermbg=2
  " match OverLength /\%81v.\+/

  " disable arrow keys
  noremap <Up> <NOP>
  noremap <Down> <NOP>
  noremap <Left> <NOP>
  noremap <Right> <NOP>

  " buffer navigation
  nnoremap <C-n> :bn<CR>
  nnoremap <C-b> :bN<CR>
  nnoremap <C-x> :bd<CR>
