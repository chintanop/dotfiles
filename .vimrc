syntax enable
set background=light
" let g:solarized_termcolors=256
colorscheme solarized

syntax on

filetype on            " enables filetype detection
filetype plugin on     " enables filetype specific plugins

set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

set hidden 				" http://items.sjbach.com/319/configuring-vim-right
set nobackup
set noswapfile

let g:miniBufExplSplitToEdge = 0
let g:miniBufExplVSplit = 20
let g:miniBufExplSplitBelow=1
let g:miniBufExplCheckDupeBufs = 0

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>                                                                                                                       
nmap <silent> <c-j> :wincmd j<CR>                                                                                                                       
nmap <silent> <c-h> :wincmd h<CR>                                                                                                                       
nmap <silent> <c-l> :wincmd l<CR>

" Toggle before copy paste
set pastetoggle=<F2>

let mapleader = "," " http://items.sjbach.com/319/configuring-vim-right

" Resize splits
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>

autocmd filetype python set expandtab

map bc :Bclose<cr>

set gfn=Monach:h14

au BufWritePost *.coffee silent CoffeeMake! -b | cwindow | redraw!

au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

let NERDTreeShowBookmarks=1

call pathogen#infect()
