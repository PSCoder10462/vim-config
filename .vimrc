set nocompatible
set clipboard=unnamed
set backspace=2
set laststatus=2

filetype off
filetype plugin on
filetype indent on
syntax on
set number
set cursorline
set shiftwidth=4
set tabstop=4
set nobackup
set scrolloff=10
inoremap kj <esc>

" arrow keys ineffective
map <Down> <NOP>
map <Up> <NOP>
map <Left> <NOP>
map <Right> <NOP>

" font settings
if has("gui_running")
    if has("gui_gtk2")
        set guifont=Inconsolata\ 12
	elseif has("gui_macvim")
		set guifont=Menlo\ Regular:h14
	elseif has("gui_win32")
		set guifont=Courier:h15:b:cANSI:qDRAFT
		set guioptions -=m "Hides the menubar
		set guioptions -=T "Hides the toolbar  
		set guioptions -=r
		set guioptions -=L
	endif
endif

" c++ build command <F5>
autocmd filetype cpp nnoremap <F5> :w <bar> !g++ -std=c++1z -O3 -Wall % -o %:r && %:r.exe <CR>

" default color scheme 
colorscheme ayu

" vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim' 
" required

Plugin 'itchyny/lightline.vim'
Plugin 'SirVer/ultisnips'
call vundle#end()            " required
filetype plugin indent on    " required


" lightline (statusline) config
let g:lightline = {
      \ 'colorscheme': 'ayu_dark',
      \ }
let g:snipMate = { 'snippet_version' : 1 }
