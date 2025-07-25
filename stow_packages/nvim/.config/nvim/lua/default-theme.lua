vim.cmd.colorscheme("carbonfox")

-- Whitespace characters
vim.opt.listchars="space:·"
vim.opt.list=true

-- For carbonfox theme
vim.cmd.highlight('EndOfBuffer guifg=#353535')
vim.cmd.highlight('LineNr guifg=#353535')

-- Doesn't work well with carbonfox theme
-- vim.cmd.highlight('EndOfBuffer guifg=NvimDarkGrey3')
-- vim.cmd.highlight('Whitespace guifg=NvimDarkGrey4')
-- vim.cmd.highlight('Comment guifg=NvimDarkGrey4')
-- vim.cmd.highlight('LineNr guifg=NvimDarkGrey3')

--vim.cmd.highlight('LineNr ctermfg=Black')
--vim.cmd.highlight('Comment ctermfg=DarkGrey')
--vim.cmd.highlight('Constant ctermfg=Yellow')
-- Whitespace characters
-- vim.cmd('highlight Whitespace ctermfg=Black')
-- vim.opt.listchars="space:·"
-- vim.opt.list=true
