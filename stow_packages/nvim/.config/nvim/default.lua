require("default-vim-plug")
require("default-settings")
require("default-keymaps")
require("default-theme")
require('nvim-surround').setup({})


local on_attach = function(client)
    require'completion'.on_attach(client)
end

-- require'lspconfig'.rust_analyzer.setup {
--     settings = {
--         ['rust-analyzer'] = {
--             check = { command = "clippy"; },
--             diagnostics = { enable = true; }
--         }
--     }
-- }

local cmp = require'cmp'

cmp.setup({
    snippet = {
        expand = function(args)
             vim.fn["vsnip#anonymous"](args.body)
        end,
    },
    sources =  {
        { name = 'nvim_lsp' },
        { name = 'nvim_lua' },
        -- { name = 'vsnip' },
        -- { name = 'path' },
        -- { name = 'buffer' },
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<Tab>'] = cmp.mapping.confirm({ select = true }),
    }),
 
})

-- require'lspconfig'.rust_analyzer.setup(
--     {
--         on_attach = function(client, bufnr)
--             vim.lsp.inlay_hint.enable(true, {bufnr = bufnr})
--         end,
--         settings = {
--             ['rust-analyzer'] = {
--                 imports = { 
--                     granularity = { 
--                         group = "module", 
--                 },
--                 prefix = "self",
--             },
--             cargo = { 
--                 buildScripts = { 
--                     enable = true 
--                 }, 
--             },
--             procMacro = { 
--                 enable = true 
--             }
--             }
--         }
--     }
-- )
--
-- require('cmp').setup({
--     sources = { 
--         { name = 'nvim_lsp' },
--     },
--     snippet = {
--         expand = function(args)
--             -- vim.snippet.expand(args.body)
--             require('luasnip').lsp_expand(args.body)
--         end,
--     }
-- })


require("mason").setup()
require("mason-lspconfig").setup()
require('lsp-zero').setup()

require('toggleterm').setup{
    open_mapping = [[<C-`>]],
    direction = 'float',
}


