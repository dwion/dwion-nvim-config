-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- Add each lsp server you've enabled.
-- Would be nice to automate this
vim.lsp.config('*', {
    capabilities = capabilities
})

-- disable netrw for treesitter
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("mason").setup()
require("mason-lspconfig").setup()
require("crates").setup()
