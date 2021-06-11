syntax on
set clipboard=unnamed
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

" Hydrid numbers
set number
set nu

" Indent {}'s
set foldmethod=indent
set nofoldenable
set foldlevel=99

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
    set guifont=Consolas:h11:cANSI
  endif
endif

" Reload config
nmap <leader>so :source $HOME\_vimrc

call plug#begin('~/vimfiles/plugged')

Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'davidhalter/jedi-vim' " Requires Python-enabled vim

call plug#end()

let g:airline_theme='ubaryd'

set termguicolors
colorscheme hmh

nmap <F2> :NERDTreeToggle<CR>
