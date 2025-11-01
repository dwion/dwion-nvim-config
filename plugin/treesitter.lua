local treesitter_languages = { 'rust', 'python', 'c', 'lua', 'latex' }
require('nvim-treesitter').install(treesitter_languages)

-- Enbale nvim-treesitter features for installed languages
vim.api.nvim_create_autocmd('FileType', {
    pattern = treesitter_languages,
    callback = function()
        -- syntax highlighting, provided by Neovim
        vim.treesitter.start()
        -- folds, provided by Neovim
        vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
        -- indentation, provided by nvim-treesitter
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end,
})
