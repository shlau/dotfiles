  filetype plugin indent on
  syntax on
  set nocompatible
  set nu     
  set ai      
  set noerrorbells    
  set nowrap      
  set ignorecase      
  set expandtab
  set tabstop=4
  set shiftwidth=4
  nmap <silent> <C-n> :tabn<CR>
  nmap <silent> <C-x> :tabclose<CR>
  set runtimepath^=~/.vim/bundle/ctrlp.vim
  set wildmenu
  set wildmode=longest,list
  set wildignore=*.OLD,*.swp
