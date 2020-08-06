"              ,,                                     
"              db                                     
"                                                     
" `7M'   `MF'`7MM  `7MMpMMMb.pMMMb.  `7Mb,od8 ,p6"bo  
"   VA   ,V    MM    MM    MM    MM    MM' "'6M'  OO  
"    VA ,V     MM    MM    MM    MM    MM    8M       
" ,,  VVV      MM    MM    MM    MM    MM    YM.    , 
" db   W     .JMML..JMML  JMML  JMML..JMML.   YMbmd'  
"
set expandtab tabstop=2 shiftwidth=2 softtabstop=2
set number relativenumber
set laststatus=2
set noshowmode
set nowrap
set termguicolors
set splitbelow splitright

set backspace=indent,eol,start
syntax on


let g:airline_theme = 'embark'
" let g:airline#extensions#tabline#enabled = 1
let g:limelight_conceal_ctermfg = 'darkgray'

map <C-o> :NERDTreeToggle<CR>

" Mapping <Alt-j> and <Alt-k> to move lines of text up or down
nnoremap <A-j> :m .+1<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
nnoremap <A-k> :m .-2<CR>==
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-k> :m '<-2<CR>gv=gv

" Mapping <Alt-b> to surround selection with double asterisks
" `vnoremap` will produce the literal character sequence 'S*gvS*'
" It appears the keycode produced by Alt is equivalent to pressing Escape
" -> https://vim.fandom.com/wiki/Avoid_the_escape_key
" vmap b S*gvS*
" nmap b viWS*gvS*
" imap b <Esc>viWS*gvS*gi

" Shift-Del deletes line
vmap [3;2~ dd

" Semicolon press initiates command line, rather than colon
nmap ; :

nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k 

call plug#begin('~/vimfiles/plugged')
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-airline/vim-airline'
Plug 'skbolton/embark'
Plug 'scrooloose/nerdtree'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-surround'
Plug 'pprovost/vim-ps1'

call plug#end()
