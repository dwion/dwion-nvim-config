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

require('telescope').setup()
require('telescope').load_extension('fzf')
require('telescope').load_extension('sessions_picker')

