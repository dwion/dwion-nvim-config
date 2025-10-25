require("nvim-tree").setup({
    view = {
        width = 25,
    },
})

require("autoclose").setup({
   options = {
        disable_when_touch = true
   },
})
require("ibl").setup()

require('illuminate').configure({
    delay = 200,
    filetypes_denylist = {
        'dirbuf',
        'dirvish',
        'fugitive',
        'text'
    },
    min_count_to_highlight = 2,
    disable_keymaps = false,
})

require('mini.git').setup()
require('mini.diff').setup()
require('mini.statusline').setup()
require('mini.surround').setup()
-- Add surrounding with `sa`
-- Delete surrounding with `sd`
-- Replace surrounding with `sr`
-- Find surrounding with `sf` or `sF` (move cursor right or left).
-- Highlight surrounding with `sh`

