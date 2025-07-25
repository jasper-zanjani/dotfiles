vim.g.mapleader = ' '
vim.keymap.set({"n", "v"}, ";", ":")

-- Tab stops
vim.opt.expandtab=true
vim.opt.shiftwidth=4
vim.opt.softtabstop=4

-- Wrap lines by word, not character
vim.opt.linebreak=true

-- Ctrl-<motion> to navigate between panes
vim.keymap.set({ "n",  'v' }, "<C-h>", "<C-w>h")
vim.keymap.set({ "n",  'v' }, "<C-j>", "<C-w>j")
vim.keymap.set({ "n",  'v' }, "<C-l>", "<C-w>l")
vim.keymap.set({ "n",  'v' }, "<C-k>", "<C-w>k")
vim.keymap.set({ "i" }, "<C-h>", "<Esc><C-w>h")
vim.keymap.set({ "i" }, "<C-j>", "<Esc><C-w>j")
vim.keymap.set({ "i" }, "<C-l>", "<Esc><C-w>l")
vim.keymap.set({ "i" }, "<C-k>", "<Esc><C-w>k")
vim.keymap.set('t', '<C-j>', '<C-Bslash><C-N><C-w>j')
vim.keymap.set('t', '<C-h>', '<C-Bslash><C-N><C-w>h')
vim.keymap.set('t', '<C-k>', '<C-Bslash><C-N><C-w>k')
vim.keymap.set('t', '<C-l>', '<C-Bslash><C-N><C-w>l')

-- Ctrl-s to save
vim.keymap.set("n", "<C-s>", "<cmd>w<CR>")
vim.keymap.set("i", "<C-s>", "<Esc><cmd>w<CR>")
vim.keymap.set("v", "<C-s>", "<Esc><cmd>w<CR>gv")

-- <leader>- to use netrw file browser
vim.keymap.set({ 'n', 'v' }, '<leader>-', ':Explore<Enter>')

-- Allows line joins to be done without moving cursor
vim.keymap.set('n', 'J', 'mzJ`z')

-- Alt-j/k to move lines
vim.keymap.set("n", "<A-k>", "<cmd>m .-2<CR>==")
vim.keymap.set("n", "<A-j>", "<cmd>m .+1<CR>==")

-- Change color of the EndOfBuffer character (~) shown at end of file
vim.cmd.highlight('EndOfBuffer ctermfg=Black')


local Plug = vim.fn['plug#']
vim.call('plug#begin')
Plug('kylechui/nvim-surround')
vim.call('plug#end')


require('nvim-surround').setup({})
