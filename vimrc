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
 Plugin 'rking/ag.vim'
 Plugin 'ctrlp.vim'
 Plugin 'tpope/vim-commentary'
 Plugin 'airblade/vim-gitgutter'
 Plugin 'tidalcycles/vim-tidal'
 
call vundle#end()

" fix broken dracula :(
let g:dracula_italic = 0
set termguicolors
let g:dracula_colorterm = 0
highlight Normal ctermbg=None
color dracula

" colorscheme solarized
" colorscheme pink
  
" set t_Co=256
set background=dark

  " VIM ESSENTIALS SuperCollider speciffics

    " Set <localleader> to be .
    let maplocalleader="."

    " open .vimrc in a new tab by pressing <leader>av
    nnoremap <leader>av :tabnew $MYVIMRC<CR>

    " Reload vimrc by pressing <leader>rv
    nnoremap <leader>rv :source $MYVIMRC<CR>

  " SC SPECIFIC
    " Find arguments of a class by pressing the semi colon key
    au Filetype supercollider nnoremap ; :call SCfindArgs()<CR>

    " Activate flashing when a piece of code is evaluated
    let g:scFlash = 1

  "SuperCollider speciffics
  
filetype plugin indent on
  
syntax on

set noshowmatch
set number
set ruler
set nowrap
set hlsearch
set incsearch
set noswapfile
set colorcolumn=80

" disable auto highlighting of Matched Parentheses
let g:loaded_matchparen=1

" Silver Search
let g:ackprg = 'ag --vimgrep'

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" http://vimcasts.org/episodes/tabs-and-spaces/
set ts=2 sts=2 sw=2 expandtab
  
"\d pry
nmap <Leader>d orequire 'pry'<cr>binding.pry<esc>:w<cr>

"\t save and run current test
nmap <leader>t :w<cr>:!bundle exec rspec<cr>

"\w save
nmap <Leader>w :w<cr>
