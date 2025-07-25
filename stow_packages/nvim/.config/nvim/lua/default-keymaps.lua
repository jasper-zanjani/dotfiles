-- Keymaps...
vim.g.mapleader = ' '

local keymap = vim.keymap.set

vim.keymap.set({"n", "v"}, ";", ":")

-- Copy to clipboard
keymap({"n", "v"}, '<leader>y', '"+y')

-- Use Ctrl-<motion> to navigate between panes
keymap({ "n",  'v' }, "<C-h>", "<C-w>h")
keymap({ "n",  'v' }, "<C-j>", "<C-w>j")
keymap({ "n",  'v' }, "<C-l>", "<C-w>l")
keymap({ "n",  'v' }, "<C-k>", "<C-w>k")
keymap({ "i" }, "<C-h>", "<Esc><C-w>h")
keymap({ "i" }, "<C-j>", "<Esc><C-w>j")
keymap({ "i" }, "<C-l>", "<Esc><C-w>l")
keymap({ "i" }, "<C-k>", "<Esc><C-w>k")
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
keymap('n', '<leader>e', '<cmd>Telescope find_files previewer=false theme=dropdown<CR>')

local telescope_find_files = [[ <cmd> lua require('telescope.builtin') .find_files(require('telescope.themes') .get_dropdown({previewer = false})) <CR>]]

-- keymap('n', '<leader><S-e>', "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({previewer = false}))<CR>" )
keymap('n', '<C-e>', telescope_find_files )

-- Putting telescope_find_files within a closure appears to solve the issue with 
-- keybindings not firing when the cursor is on the last character of a document.
keymap('n', '<leader>=', function() require('telescope.builtin').find_files() end)
keymap("n", "<leader>f", "<cmd>Telescope live_grep<CR>")

-- Indent document
keymap('n', '<C-S-i>', '=ap<CR>')

keymap({'n', 'v', 'i'}, '<A-z>', '<cmd>set wrap!<CR>')

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

vim.keymap.set({ 'n', 'v' }, '<leader>-', ':Explore<Enter>')

-- Insert newlines under cursor without entering Insert mode
-- Found from https://www.reddit.com/r/neovim/comments/10kah18/how_to_insert_newline_without_entering_insert_mode/
vim.keymap.set('n', '<CR>', "<Cmd>call append(line('.'), repeat([''], v:count1))<CR>")
-- <S-CR> doesn't seem to work.., other modifiers don't feel right
-- vim.keymap.set('n', '<leader><CR>', "<Cmd>call append(line('.') - 1, repeat([''], v:count1))<CR>")

vim.keymap.set('n', '<A-l>', "<Cmd>set rnu!<CR>")

