syntax enable
filetype on            " enables filetype detection
filetype plugin on     " enables filetype specific plugins

let g:ft_ignore_pat = '\.org.txt' " vim Organizer
filetype plugin indent on "for orgmode

syntax on

set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set relativenumber " show relative line numbers
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

set ruler 				" show colum numbers
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
autocmd fileType python autocmd BufWritePre <buffer> :%s/\s\+$//e

map bc :Bclose<cr>

set gfn=Monach:h14

au BufWritePost *.coffee silent CoffeeMake! -b | cwindow | redraw!

au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

"VimOrganizer
au! BufRead,BufWrite,BufWritePost,BufNewFile *.org.txt
au BufEnter *.org.txt            call org#SetOrgFileType()
command! OrgCapture :call org#CaptureBuffer()
command! OrgCaptureFile :call org#OpenCaptureFile()

" map <C-]> :call OrgMoveLevel(line("."),'right')<CR>
" map <C-[> :call OrgMoveLevel(line("."),'left')<CR>

let g:org_agenda_files=['~/org/index.org']
let g:org_heading_shade_leading_stars = 1
let g:org_startup_folded = 'nofold'

let g:global_column_defaults = '%ITEM %Estimated %Actual'


" indent guides
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

" Paste multiple times  dont yank the selected overwrite
" http://stackoverflow.com/questions/7163947/vim-paste-multiple-times
xnoremap p pgvy

let NERDTreeShowBookmarks=1

call pathogen#infect()
call pathogen#helptags()

set background=light
let g:solarized_termcolors = 256
let g:solarized_termtrans = 1
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
colorscheme solarized

let g:pymode_folding = 0
let g:pymode_lint_on_write = 1

autocmd FileType python,perl,ruby,sh,zsh  map <leader>c I#     <ESC>A     #<ESC>yyp0lv$hhr-yykPjj
autocmd FileType javascript,php,c,cpp,css map <leader>c I/*     <ESC>A     */<ESC>yyp0llv$r-$hc$*/<ESC>yykPjj

let g:pymode_rope = 1
let g:pymode_lint_on_fly = 0

" highlight over 80 columns
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Toggle NERDTree
map <leader>n :NERDTreeToggle<CR>

noremap <F7> :PymodeLintToggle<CR>
noremap <F8> :PymodeLintAuto<CR>
noremap <F9> :PymodeLint<CR>

call togglebg#map("<F5>")

set colorcolumn=80
