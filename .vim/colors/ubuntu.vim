set colorcolumn=120

hi Comment      guibg=NONE    guifg=#851c63
hi LineNr       guibg=NONE    guifg=#5b1344
hi NonText                    guifg=#5b1344
hi TabLine      guibg=#5b1344 guifg=#851c63 ctermfg=DarkGrey
hi TabLineFill  guibg=NONE    guifg=#5b1344 ctermfg=DarkGrey
hi Visual       guibg=#5b1344 guifg=NONE

" Have to research what exactly the `gui`, `cterm`, and `term`
" settings do. Changing the guibg was not effective in changing
" the bar's color without first setting these to `NONE`. Previously
" they had all been set to "reverse"
hi VertSplit    guibg=#5b1344 gui=NONE cterm=NONE term=NONE
set fillchars=vert:\ ,fold:-

" When `cterm` was set to reverse, the colors were inverted.
hi      StatusLine        guibg=#5b1344 guifg=#851c63 cterm=reverse
hi      StatusLineNC      guibg=#5b1344 guifg=#851c63 cterm=NONE
hi      Directory                  guifg=#851c63
hi      htmlBold          guifg=Yellow

hi link ColorColumn       TabLineFill
hi      SpecialKey        ctermfg=Cyan guifg=Cyan
" Markdown-specific highlights
hi      Title             guifg=Magenta ctermfg=Magenta
" mkdHeading marks the series of hashmarks before headers. Headers themselves are marked as htmlH1, htmlH2...
hi      mkdHeading        guifg=DarkMagenta
" htmlString is the URL in markdown inline links
hi      htmlString        guifg=DarkMagenta
" mkdCode marks any lines between 3 backticks
hi      mkdCode           guifg=Yellow4
" mkdCodeDelimiter marks lines with 3 backticks as well as individual backticks
hi link mkdCodeDelimiter  Comment
hi      mkdBold           guifg=Yellow
" Ref-style link definitions are colored with the following styles:
" [mkdLinkDef]: mkdLinkDefTarget mkdLinkTitle
hi link mkdLinkDefTarget  htmlString
hi link mkdLinkTitle      Comment
