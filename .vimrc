syntax on
set clipboard=unnamed
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

" Hydrid numbers
set number
set nu
set relativenumber
set incsearch
set wildmenu
set autoindent

" Fix backspace
set backspace=indent,eol,start

if has("gui_running")

  " Highlight greater than 80 char
  highlight OverLength ctermbg=red ctermfg=white guibg=#592929
  match OverLength /\%81v.\+/

  " Fonts
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guioptions-=T
    set guioptions-=m
    set guioptions-=l
    set guioptions-=r
    set guioptions-=L
    map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
    set guifont=Consolas:h11:cANSI
  endif
endif

call plug#begin('~/vimfiles/plugged')

Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'davidhalter/jedi-vim' " Requires Python-enabled vim, please note on Windows, use Python 32-bit

call plug#end()

let g:airline_theme='deus'

set termguicolors
colorscheme monokai

nmap <F2> :NERDTreeToggle<CR>

" Non-ascii stuff
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
