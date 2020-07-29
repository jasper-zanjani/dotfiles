"              ,,                                     
"              db                                     
"                                                     
" `7M'   `MF'`7MM  `7MMpMMMb.pMMMb.  `7Mb,od8 ,p6"bo  
"   VA   ,V    MM    MM    MM    MM    MM' "'6M'  OO  
"    VA ,V     MM    MM    MM    MM    MM    8M       
" ,,  VVV      MM    MM    MM    MM    MM    YM.    , 
" db   W     .JMML..JMML  JMML  JMML..JMML.   YMbmd'  
"
set expandtab
set tabstop=2
set shiftwidth=2
set number
set relativenumber
set laststatus=2
set noshowmode
set nowrap
set termguicolors
set splitbelow
set splitright
set termguicolors
syntax on
colorscheme ubuntu

let g:airline_theme = 'embark'
" let g:airline#extensions#tabline#enabled = 1
" let g:limelight_conceal_ctermfg = 'darkgray'

map <C-o> :NERDTreeToggle<CR>

" Mapping <Alt-j> and <Alt-k> to move lines of text up or down
" For some reason, coming out of insert mode with <Esc> then pressing j or k 
" appears to trigger this keybinding as well
" It appears the keycode produced by Alt is equivalent to pressing Escape
" -> https://vim.fandom.com/wiki/Avoid_the_escape_key

nmap <silent> H :m .-2<CR>==
nmap <silent> L :m .+1<CR>==
nmap <silent> K o<Esc>k 

" Mapping <Alt-b> to surround selection with double asterisks
" `vnoremap` will produce the literal character sequence 'S*gvS*'
vmap b S*gvS*
nmap b viWS*gvS*
imap b <Esc>viWS*gvS*gi

" Shift-Del deletes line
vmap [3;2~ dd

" Semicolon press initiates command line, rather than colon
nmap ; :

nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k 

