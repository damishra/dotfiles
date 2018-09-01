" start of file

set nocompatible
set t_Co=256
colo seoul256
set number
filetype indent plugin on
syntax on
set hidden
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
set cursorline
set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set laststatus=2
set confirm
set visualbell
set t_vb=
set mouse=a
set cmdheight=2
set number
set notimeout ttimeout ttimeoutlen=200
set pastetoggle=<F11>
set shiftwidth=3
set tabstop=3
set softtabstop=3
set expandtab
map Y y$
nnoremap <C-L> :nohl<CR><C-L>

call plug#begin('~/.vim/plugged')

Plug 'https://github.com/scrooloose/nerdcommenter.git'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'neomake/neomake'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'https://github.com/vim-syntastic/syntastic.git'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/seoul256.vim'
Plug 'OmniSharp/omnisharp-vim'

call plug#end()

let g:lightline = {
   \  'colorscheme': 'seoul256'
   \  }

hi clear CursorLine
augroup CLClear
   autocmd! ColorScheme * hi clear CursorLine
augroup END

hi CursorLineNR cterm=bold
augroup CLNRSet
   autocmd! ColorScheme * hi CursorLineNR cterm=bold
augroup END

let &colorcolumn=join(range(81,999),",")

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>0
inoremap {;<CR> {<CR>};<ESC>0

" end of file

