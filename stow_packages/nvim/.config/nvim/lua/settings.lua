-- Tab stops
vim.opt.expandtab=true
vim.opt.shiftwidth=4
vim.opt.softtabstop=4

-- Wrap lines by word, not character
vim.opt.linebreak=true

-- Line numbers
vim.opt.relativenumber=true
vim.opt.number=true
vim.opt.breakindent=true
vim.opt.splitbelow=true
vim.opt.splitright=true

-- Prevent Cursorline from highlighting the entire line
vim.opt.cursorline=true
vim.cmd.highlight('clear Cursorline')

-- Change color of the EndOfBuffer character (~) shown at end of file
vim.cmd.highlight('EndOfBuffer ctermfg=Black')

vim.opt.signcolumn='yes'

-- Don't know what is going on here
require('telescope').setup( {
    mappings = {},
    pickers = {},
    extensions = {},
})

require('nvim-surround').setup({})

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the listed parsers MUST always be installed)
  ensure_installed = { 
      "bash",
      "lua", 
      "vim", 
      "vimdoc", 
      "markdown", 
      "markdown_inline", 
      "rust", 
      "python", 
      "solidity",
      "sql",
  },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  -- List of parsers to ignore installing (or "all")
  ignore_install = { "javascript" },

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    disable = { "c", "rust" },
    -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
    disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
