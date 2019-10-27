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
syntax on
map <C-o> :NERDTreeToggle<CR>
let g:limelight_conceal_ctermfg = 'darkgray'
:colo KDEPlasmaTurquoise

" Mapping <Alt-j> and <Alt-k> to move lines of text up or down
nnoremap <A-j> :m .+1<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
nnoremap <A-k> :m .-2<CR>==
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-k> :m '<-2<CR>gv=gv

" Mapping <Alt-b> to surround selection with double asterisks
vnoremap <A-b> S*gvS*
