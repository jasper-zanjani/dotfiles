--vim.keymap.del('n', '<C-S-b>')
vim.api.nvim_buf_set_keymap(0, 'n', '<C-B>', '<cmd> !cargo build<CR>', {noremap=true, silent=true})
vim.api.nvim_buf_set_keymap(0, 'n', '<leader>B', '<cmd> !cargo build<CR>', {noremap=true, silent=true})

vim.api.nvim_buf_set_keymap(0, 'n', '<C-/>', 'I//<Esc>`<', {})
