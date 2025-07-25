local Plug = vim.fn['plug#']
vim.call('plug#begin')

Plug('kylechui/nvim-surround')

-- LSP 
Plug('neovim/nvim-lspconfig')
Plug('williamboman/mason.nvim')
Plug('williamboman/mason-lspconfig.nvim')
Plug('vonheikemen/lsp-zero.nvim')
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-nvim-lua')
Plug('saadparwaiz1/cmp_luasnip')
Plug('L3MON4D3/LuaSnip')
Plug('rafamadriz/friendly-snippets')

-- File explorer
Plug('nvim-tree/nvim-tree.lua')
Plug('nvim-tree/nvim-web-devicons')

-- Rust
Plug('simrat39/rust-tools.nvim')

-- Themes
Plug('ellisonleao/gruvbox.nvim')
Plug('folke/tokyonight.nvim')
Plug('catppuccin/nvim')
Plug('edeneast/nightfox.nvim')
Plug('scottmckendry/cyberdream.nvim')
Plug('bluz71/vim-moonfly-colors')
Plug('tiagovla/tokyodark.nvim')

-- Telescope
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim')

-- Completion engine
Plug('nvim-treesitter/nvim-treesitter')

-- "Sticky scroll"
Plug('nvim-treesitter/nvim-treesitter-context')

Plug('theprimeagen/harpoon')

-- Indentation lines
Plug('lukas-reineke/indent-blankline.nvim')

Plug('akinsho/toggleterm.nvim')

vim.call('plug#end')


