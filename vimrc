  4 " for the editor itself
  5 Plugin 'gmarik/Vundle.vim'
  6 Plugin 'Solarized'
  7 Plugin 'Pink'
  8 Plugin 'scrooloose/nerdtree'
  9 Plugin 'dracula/vim'
 10 Plugin 'endwise.vim'
 11 Plugin 'ack.vim'
 12 Plugin 'ctrlp.vim'
 13 
 14 call vundle#end()
 15 
 16 " colorscheme solarized
 17 " colorscheme pink
 18 color dracula
 19 
 20 set t_Co=256
 21 " set background=light
 22 
 23 filetype plugin indent on
 24 
 25 syntax on
 26 
 27 set number
 28 
 29 set ruler
 30 
 31 set nowrap
 32 
 33 set hlsearch
 34 set incsearch
 35 set noswapfile
 36 
 37 " http://vimcasts.org/episodes/tabs-and-spaces/
 38 set ts=2 sts=2 sw=2 expandtab
 39 
 40 
 41 nmap <leader>t :!bundle exec rspec %<cr>
