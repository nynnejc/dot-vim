" for the editor itself
Plugin 'gmarik/Vundle.vim'
Plugin 'Solarized'
Plugin 'Pink'
Plugin 'scrooloose/nerdtree'
Plugin 'dracula/vim'
Plugin 'endwise.vim'
Plugin 'ack.vim'
Plugin 'ctrlp.vim'
Plugin 'BlakeWilliams/vim-pry'
 
call vundle#end()
 
" colorscheme solarized
" colorscheme pink
color dracula
  
set t_Co=256
" set background=light
  
filetype plugin indent on
  
syntax on
  
set number
  
set ruler
 
set nowrap
  
set hlsearch
set incsearch
set noswapfile
  
" http://vimcasts.org/episodes/tabs-and-spaces/
set ts=2 sts=2 sw=2 expandtab
  
  
nmap <leader>t :!bundle exec rspec %<cr>
nmap <leader>d :call pry#insert()<cr>
