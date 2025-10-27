-- [[ Set up keymaps ]] See `:h vim.keymap.set()`, `:h mapping`, `:h keycodes`
local map = vim.keymap.set

-- Use <Esc> to exit terminal mode
map('t', '<Esc>', '<C-\\><C-n>', { silent = true })

-- insert newline with Enter
map('n', '<Enter>', 'o<Esc>')
map('n', '<S-Enter>', 'O<Esc>')

map('n', '<Leader>c', ':q<CR>', { desc = 'Close window' })
map('n', '<Leader>q', ':qa<CR>', { desc = 'Exit Neovim' })

local api = require "nvim-tree.api"
map('n', "<Leader>e", api.tree.toggle, { desc = 'Toggle nvim-tree' })
map('n', "<Leader>f", api.tree.open, { desc = 'Focus on nvim-tree' })

-- LSP stuff
map("n", "<leader>r", vim.lsp.buf.rename, { desc = 'LSP rename' })
map("n", "<leader>d", vim.diagnostic.open_float, { desc = 'LSP diagnostics' })
map("n", "<leader>n", vim.lsp.buf.definition, { desc = 'LSP definition' })
map("n", "<leader>i", vim.lsp.buf.implementation, { desc = 'LSP implementaion' })
map("n", "<leader>m", vim.lsp.buf.references, { desc = 'LSP references' })

-- replace currently selected text without yanking it
map('v', 'p', '"_dP', { silent = true })
map({ 'n', 'v' }, 'c', '"_c', { silent = true })
map({ 'n', 'v' }, 'x', '"_x', { silent = true })

-- Move between windows
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- Resize windows
map("n", "<C-Up>", ":resize -2<CR>", { silent = true })
map("n", "<C-Down>", ":resize +2<CR>", { silent = true })
map("n", "<C-Left>", ":vertical resize -4<CR>", { silent = true })
map("n", "<C-Right>", ":vertical resize +4<CR>", { silent = true })

-- Move code around
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- Better indentation change
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Move between buffers
map("n", "<TAB>", "gt")
map("n", "<S-TAB>", "gT")

-- Keep view centered on line when using `n`
map("n", "n", "nzz")
map("n", "N", "Nzz")

-- H -> ^, L -> $
map({ 'n', 'v' }, 'H', '^')
map({ 'n', 'v' }, 'L', '$')

map({'n', 'v' }, '<leader>t', ':FloatermToggle<CR>', { desc = 'Toggle floating terminal' })
