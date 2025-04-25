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

vim.keymap.set('n', '<leader>i', 'a--8<-- "includes/"<Esc>i')
vim.keymap.set('n', '<leader>g', 'a<div class="grid cards" markdown><Enter></div><Esc>')
vim.keymap.set('n', '<leader>t', 'a=== ""<Esc>')
vim.keymap.set('n', '<leader>c', 'a=== "Links"<Enter><Enter>=== "Resources"<Enter><Enter>=== "Timeline"<Esc>4k')
vim.keymap.set('v', '<leader>c', 'dPa (1)<Esc>}a{: .annotate }<Enter><Enter>1.<Tab>=== "Links"<Enter><Enter><Tab>=== "Resources"<Enter><Enter>=== "Timeline"<Esc>gv')
