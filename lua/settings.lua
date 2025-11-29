-- [[ Setting options ]] See `:h vim.o`
-- For more options, you can see `:help option-list`
-- To see documentation for an option, you can use `:h 'optionname'`, for example `:h 'number'`

-- Print the line number in front of each line
vim.o.number = true
vim.o.relativenumber = true

-- Sync clipboard between OS and Neovim. Schedule the setting after `UiEnter` because it can
-- increase startup-time.
vim.api.nvim_create_autocmd('UIEnter', {
    callback = function()
        vim.o.clipboard = 'unnamedplus'
    end,
})

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- Highlight the line where the cursor is on
vim.o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 3

-- Show <tab> and trailing spaces
vim.o.list = true

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s) See `:help 'confirm'`
vim.o.confirm = true

-- Enable 24 bit colour
vim.opt.termguicolors = true

-- Insert 4 spaces instead of tab character
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- Smoother scrolling through long lines
vim.api.nvim_set_option_value('smoothscroll', true, { scope = 'global' })
-- Give windows borders
vim.api.nvim_set_option_value('winborder', 'bold', {})
-- Leave room for signs on the side
vim.api.nvim_set_option_value('signcolumn', 'yes', {})
vim.api.nvim_set_option_value('showcmd', false, {})
-- Have long lines break at words
vim.api.nvim_set_option_value('linebreak', true, {})
-- When splitting vertical, split right
vim.api.nvim_set_option_value('splitright', true, {})


