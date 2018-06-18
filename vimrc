  set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" for the editor itself
Plugin 'gmarik/Vundle.vim'
" Plugin 'Solarized'
" Plugin 'Pink'
Plugin 'scrooloose/nerdtree'
Plugin 'dracula/vim'
Plugin 'endwise.vim'
Plugin 'ack.vim'
Plugin 'ctrlp.vim'
Plugin 'tpope/vim-commentary'
 
call vundle#end()

" fix broken dracula :(
let g:dracula_italic = 0
set termguicolors
let g:dracula_colorterm = 0
highlight Normal ctermbg=None
color dracula

" colorscheme solarized
" colorscheme pink
" color dracula
  
" set t_Co=256
set background=dark
  
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
  
"\d pry
nmap <Leader>d orequire 'pry'<cr>binding.pry<esc>:w<cr>

"\t save and run current test
nmap <leader>t :w<cr>:!bundle exec rspec<cr>

"\w save
nmap <Leader>w :w<cr>
