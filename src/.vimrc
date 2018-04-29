set nocompatible          " get rid of Vi compatibility mode. SET FIRST!
filetype plugin indent on " filetype detection[ON] plugin[ON] indent[ON]
set t_Co=256              " enable 256-color mode.
syntax enable             " enable syntax highlighting (previously syntax on).
colorscheme slate         " set colorscheme
set number                " show line numbers
set laststatus=2          " last window always has a statusline
filetype indent on        " activates indenting for files
set nohlsearch            " Don't continue to highlight searched phrases.
set incsearch             " But do highlight as you type your search.
set ignorecase            " Make searches case-insensitive.
set ruler                 " Always show info along bottom.
set autoindent            " auto-indent
set tabstop=4             " tab spacing
set softtabstop=4         " unify
set shiftwidth=4          " indent/outdent by 4 columns
set shiftround            " always indent/outdent to the nearest tabstop
set expandtab             " use spaces instead of tabs
set smarttab              " use tabs at the start of a line, spaces elsewhere
set nowrap                " don't wrap text

" tests
set path=$PWD/**          " set path to current dir from where you launched vim
" file browser
let g:netrw_banner = 0	  " remove banner
let g:netrw_liststyle=3   " tree view
set wildmenu              " enabled menu at bottom. hit TAB twice

" tabs
nnoremap <leader><Tab> :tabn<CR>
nnoremap <leader><S-Tab> :tabp<CR>
nnoremap <leader>x :tabclose<CR>

" KEY MAPS
let mapleader=","
" open file browser
nnoremap <leader>d :Sex<CR>
" copy to system clipboard
vnoremap <silent> <leader>c :!tee >(pbcopy)<CR>

