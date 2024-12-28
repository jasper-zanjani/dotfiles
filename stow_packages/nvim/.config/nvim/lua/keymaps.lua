-- Keymaps...
vim.g.mapleader = ' '

local keymap = vim.keymap.set

vim.keymap.set({"n", "v"}, ";", ":")

-- Copy to clipboard
keymap({"n", "v"}, '<leader>y', '"+y')

-- Use Ctrl-<motion> to navigate between panes
keymap({ "n", 'i', 'v' }, "<C-h>", "<C-w>h")
keymap({ "n", 'i', 'v' }, "<C-j>", "<C-w>j")
keymap({ "n" , 'i', 'v'}, "<C-l>", "<C-w>l")
keymap({ "n" , 'i', 'v'}, "<C-k>", "<C-w>k")
keymap('t', '<C-j>', '<C-Bslash><C-N><C-w>j')
keymap('t', '<C-h>', '<C-Bslash><C-N><C-w>h')
keymap('t', '<C-k>', '<C-Bslash><C-N><C-w>k')
keymap('t', '<C-l>', '<C-Bslash><C-N><C-w>l')

-- Closing delimiters
--keymap("i", "{", "{}<left>")
--keymap("i", "[", "[]<left>")
--keymap("i", "(", "()<left>")

-- Ctrl-s to save
keymap("n", "<C-s>", "<cmd>w<CR>")
keymap("i", "<C-s>", "<Esc><cmd>w<CR>")
keymap("v", "<C-s>", "<Esc><cmd>w<CR>gv")

-- Ctrl-c/q to quit
keymap("n", "<C-c>", "<cmd>qa!<CR>")
keymap("i", "<C-c>", "<Esc><cmd>qa!<CR>")
keymap("n", "<C-q>", "<cmd>qa!<CR>")
keymap("i", "<C-q>", "<Esc><cmd>qa!<CR>")

-- Alt-j/k to move lines
keymap("n", "<A-k>", "<cmd>m .-2<CR>==")
keymap("n", "<A-j>", "<cmd>m .+1<CR>==")
keymap("v", "<A-j>", "<cmd>m '>+1<CR>")
keymap("v", "<A-k>", "<cmd>m '<-2<CR>")

-- Ctrl-T to open new tab
keymap('n', '<C-t>', '<cmd>tabnew<CR>')
keymap('n', '<leader>t', '<cmd>tabnew<CR>')

-- Ctrl-W to close tab
-- First removing some interfering bindings
-- vim.keymap.del('n', '<C-w>d')
-- vim.keymap.del('n', '<C-w><C-d>')
-- keymap('n', '<C-w>', '<cmd>execute "try | close | catch | quit | endtry"<CR>')
keymap('n', '<leader>w', '<cmd>execute "try | close | catch | quit | endtry"<CR>')

-- Reload config
keymap('n', '<C-r>', '<cmd>source %<CR>')

-- File explorer
-- keymap("", "<C-S-E>", "<cmd>NvimTreeToggle<CR>")
-- keymap("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")

-- Telescope file-finder
-- keymap('n', '<leader><S-e>', '<cmd>Telescope find_files previewer=false theme=dropdown<CR>')

local telescope_find_files = [[ <cmd> lua require('telescope.builtin') .find_files(require('telescope.themes') .get_dropdown({previewer = false})) <CR>]]

-- keymap('n', '<leader><S-e>', "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({previewer = false}))<CR>" )
keymap('n', '<C-S-e>', telescope_find_files )
keymap('n', '<leader>e', telescope_find_files )
keymap('n', '<leader><S-e>', telescope_find_files )

keymap("n", "<C-S-f>", "<cmd>Telescope live_grep<CR>")
keymap("n", "<leader>f", "<cmd>Telescope live_grep<CR>")
keymap("n", "<leader><S-f>", "<cmd>Telescope live_grep<CR>")

-- Indent document
keymap('n', '<C-S-i>', '=ap<CR>')

keymap('n', '<A-z>', '<cmd>set wrap!<CR>')

-- Allows line joins to be done without moving cursor
keymap('n', 'J', 'mzJ`z')


keymap('n', '<C-/>', '<cmd>normal gcc<CR>')
keymap('v', '<C-/>', '<cmd>normal gcc<CR>gv')


-- Harpoon
keymap('n', '<leader>a', require('harpoon.mark').add_file)
keymap('n', '<leader>q', require('harpoon.ui').toggle_quick_menu)
keymap('n', '<leader>n', require('harpoon.ui').nav_next)
keymap('n', '<leader>p', require('harpoon.ui').nav_prev)


keymap('t', '<Esc>', '<C-bslash><C-N>' )
