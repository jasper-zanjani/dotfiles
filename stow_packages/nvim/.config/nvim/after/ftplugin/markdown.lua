-- Place selected contents or word under cursor into a hyperlink
vim.keymap.set('n', '<leader><S-l>', 'viWS]%a()<ESC>', { remap = true })
vim.keymap.set('v', '<leader><S-l>', 'S]%a()<ESC>', { remap = true })
vim.keymap.set('n', '<leader>l', 'viWS]%a()<esc>"+P', { remap = true })
vim.keymap.set('v', '<leader>l', 'S]%a()<esc>"+P', { remap = true })

-- Bold
vim.keymap.set('i', '<C-b>', '****<esc>hi')
vim.keymap.set('n', '<leader>b', 'ysiW*ysE*', { remap = true })
vim.keymap.set('v', '<leader>b', 'S*gv2lS*', { remap = true })

-- Build mkdocs-material
vim.keymap.set('n', '<leader><S-CR>', '!make')
vim.keymap.set('n', '<F10>', '<cmd>!make<CR>', {})

vim.keymap.set('n', '<leader>I', 'o```<Enter><Enter>```<Esc>k$')
vim.keymap.set('n', '<leader>i', 'o--8<-- "includes/"<Esc>i')
vim.keymap.set('n', '<leader>g', 'a<div class="grid cards" markdown><enter><enter><enter><enter></div><Esc>2-a-<tab>')
