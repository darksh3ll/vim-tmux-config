

" URL: ""
" Authors: job stéphane
" Description:
"------------------------------------------------------------


"------------------------------------------------------------
" Settings
"------------------------------------------------------------

" => Cancels compatibility with ancestor vi: totally indispensable
set nocompatible

 " => Vim Beeper Prevention
set visualbell
set noerrorbells

" Activates the 'usual' behaviour of the backspace key.
set backspace=indent,eol,start

"Hide files when opening other files
set hidden"

" => Allows use of the mouse
if has("mouse")
    set mouse=a
endif

"------------------------------------------------------------
" Display
"------------------------------------------------------------

" Change the font
set guifont=DejaVu\ Sans\ Mono\ 15
set antialias

" => Updates the title of your window or terminal.
set title

" => Displays the number of lines
set number

 " =>  Displays the current cursor position
 set ruler

" => Displays lines that are too long on several lines
set wrap

" Displays a minimum of 3 lines around the cursor"(for scroll)"
set scrolloff=3

"------------------------------------------------------------
" Search
"------------------------------------------------------------
" =>Ignore la casse lors d'une recherche
set ignorecase

" => Si une recherche contient une majuscule, re-active la sensibilite a la casse"
set smartcase

 "  => Surligne les resultats de recherche pendant la saisie"
set incsearch

" => Surligne les resultats de recherche
set hlsearch


"------------------------------------------------------------
" Programming
"------------------------------------------------------------

" => Automatic closing brackets"
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" => Execute python code directly in vim with the f4 key."
imap <F4> <Esc>:w<CR>:!clear;python %<CR>
nmap <F4> <Esc>:w<CR>:!clear;python %<CR>

" Activates syntax highlighting
syntax enable

" => Enables file type-specific behaviours such as syntax and indentation.
filetype off
filetype plugin on
filetype indent on
set encoding=utf-8

" => Enable folding"
set foldmethod=indent
set foldlevel=99

" =>Enable folding with the spacebar
nnoremap <space> za

let g:SimpylFold_docstring_preview=1


"------------------------------------------------------------
"Plugins
"URL https://github.com/VundleVim/Vundle.vim
"------------------------------------------------------------

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

  Plugin 'VundleVim/Vundle.vim'
  Plugin 'preservim/nerdtree'
  Plugin 'tmhedberg/SimpylFold'
  Plugin 'vim-scripts/indentpython.vim'
  Plugin 'ctrlpvim/ctrlp.vim'


call vundle#end()
filetype plugin indent on
