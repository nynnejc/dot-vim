set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" for the editor itself
Plugin 'gmarik/Vundle.vim'
Plugin 'Solarized'
Plugin 'Pink'
Plugin 'scrooloose/nerdtree'

call vundle#end()

" colorscheme solarized
colorscheme pink
set t_Co=256
set background=light

syntax on

set number

set ruler

set nowrap

set hlsearch

" http://vimcasts.org/episodes/tabs-and-spaces/
set ts=2 sts=2 sw=2 expandtab
