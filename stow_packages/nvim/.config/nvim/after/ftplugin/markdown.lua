-- Place selected contents or word under cursor into a hyperlink
vim.keymap.set('n', '<leader>l', 'viWS]%a()<ESC>', { remap = true })
vim.keymap.set('v', '<leader>l', 'S]%a()<ESC>', { remap = true })
vim.keymap.set('n', '<leader><S-l>', 'viWS]%a()<esc>"+P', { remap = true })
vim.keymap.set('v', '<leader><S-l>', 'S]%a()<esc>"+P', { remap = true })

-- Bold
vim.keymap.set('i', '<C-b>', '****<esc>hi')
vim.keymap.set('n', '<leader>b', 'ysiW*ysE*', { remap = true })
vim.keymap.set('v', '<leader>b', 'S*gv2lS*', { remap = true })

-- Build mkdocs-material
vim.keymap.set('n', '<leader><S-CR>', '!make')
