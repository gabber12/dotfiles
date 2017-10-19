"List plugins (install with vundle)
" Plugin 'vmarik/Vundle.vim'
" Plugin 'lervag/vimtex'
" Plugin 'scrooloose/nerdtree'
" Plugin 'bitc/vim-hdevtools'
" Plugin 'eagletmt/neco-ghc'
" Plugin 'Shougo/neocomplete.vim'
" Plugin 'basepi/vim-conque'
" Plugin 'tpope/vim-fugitive'

" ctrlp.vim to be added manually

set t_Co=256
syntax enable
set background=dark
colorscheme badwolf

"Spaces/tabs
set tabstop=4		" number of visual spaces per tab (normally 4)
set softtabstop=4	" number of spaces in tab when editing
set shiftwidth=4
set expandtab		" tabs are spaces
set shiftround
set smartindent
set autoindent

"UI
set number
set cursorline
set laststatus=2
set showtabline=1
filetype indent on	" load filetype-specific indent files
"set wildmenu		" visual autocomplete for command menu
set lazyredraw		" redraw only when we need to
set showmatch		" highlight matching [{()}]

"Searching
set incsearch		" search as characters are entered
set hlsearch		" highlight matches

"Folding
set foldenable
set foldlevelstart=10	" open most folds by default
set foldnestmax=10	" 10 nested fold max
nnoremap <space> za
set foldmethod=indent	" fold based on indent level

"Movement
nnoremap j gj
nnoremap k gk

"CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0

"NERDTree
map <C-n> :NERDTreeToggle<CR>

"Sane vim splits
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Movement
nnoremap <Tab> gt
nnoremap <BS> gT

set colorcolumn=81
" set textwidth=76

set guioptions-=r
set guioptions-=L
set guioptions-=e
set guifont=Monospace\ 11

" Format-specific options
let g:tex_flavor = "latex"
au FileType tex nnoremap <c-p> :w<CR>:!pdflatex %<CR>
au FileType python set colorcolumn=73

