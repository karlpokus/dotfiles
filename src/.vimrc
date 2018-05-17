set nocompatible          " get rid of Vi compatibility mode. SET FIRST!
filetype plugin indent on " filetype detection[ON] plugin[ON] indent[ON]
set t_Co=256              " enable 256-color mode.
syntax enable             " enable syntax highlighting (previously syntax on).
colorscheme pablo2        " set colorscheme; slate, onedark 
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
set path=$PWD/**          " set path to current dir from where you launched vim
set rtp+=/usr/local/opt/fzf " add fzf to runtimepath

" highlight for .txt
highlight TxtComment    ctermfg=19
"highlight TxtDone       ctermfg=19
"highlight TxtPending    ctermfg=green
"highlight TxtHeader     ctermfg=green

" file browser
let g:netrw_banner = 0	  " remove banner
let g:netrw_liststyle=3   " tree view
set wildmenu              " enabled menu at bottom 

" KEY MAPPINGS
let mapleader=","
" open file browser
nnoremap <leader>d :Vex<CR>
" run fzf on nv
nnoremap <leader>D :FZF ~/Dropbox/nv<cr>
" tabs
nnoremap <leader>l :tabn<CR>
nnoremap <leader>h :tabp<CR>
nnoremap <leader>x :tabclose<CR>
"highlight TabLineFill ctermfg=white ctermbg=green
"highlight TabLine ctermfg=19 ctermbg=blue
"highlight TabLineSel ctermfg=white
" copy to system clipboard on OSX
vnoremap <silent> <leader>c :!tee >(pbcopy)<CR>
" edit/source vimrc
nnoremap <leader>ev :vs $MYVIMRC<cr>
nnoremap <leader>sv :so $MYVIMRC<cr>
" use space to page down
nnoremap <space> <c-d>

" TESTS

"command! -nargs=* Note :!ls | grep <args>
