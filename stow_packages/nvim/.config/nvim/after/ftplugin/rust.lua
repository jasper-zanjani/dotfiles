--vim.keymap.del('n', '<C-S-b>')
vim.keymap.set('n', '<F10>', '<cmd> !cargo run<CR>', {noremap=true, silent=true})

vim.api.nvim_buf_set_keymap(0, 'n', '<C-/>', 'I//<Esc>`<', {})
