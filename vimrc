set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')

" Plugin 'Solarized'
" Plugin 'Pink'
 Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
 Plug 'dracula/vim', { 'as': 'dracula' }
 Plug 'tpope/vim-commentary'
 Plug 'tpope/vim-endwise' 
 " Plugin 'ack.vim'
 " Plugin 'rking/ag.vim'
 " Plugin 'ctrlp.vim'
 " Plugin 'airblade/vim-gitgutter'
 " Plugin 'tidalcycles/vim-tidal'

call plug#end()

" coc
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 
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

    "To fix f5, f6, f12 keys
    au Filetype supercollider nnoremap <buffer> <leader>a :call SClang_block()<CR>
    au Filetype supercollider inoremap <buffer> <leader>a :call SClang_block()<CR>a
    au Filetype supercollider vnoremap <buffer> <leader>a :call SClang_line()<CR>

    au Filetype supercollider vnoremap <buffer> <leader>b :call SClang_line()<CR>
    au Filetype supercollider nnoremap <buffer> <leader>b :call SClang_line()<CR>
    au Filetype supercollider inoremap <buffer> <leader>b :call SClang_line()<CR>a

    au Filetype supercollider nnoremap <buffer> <leader>. :call SClangHardstop()<CR>
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
