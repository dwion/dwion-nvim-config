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
map('n', "<Leader>w", api.tree.toggle, { desc = 'Toggle nvim-tree' })
map('n', "<Leader>e", api.tree.open, { desc = 'Focus on nvim-tree' })

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

-- Toggle floating terminal
map({'n', 'v' }, '<leader>tf', ':FloatermToggle<CR>', { desc = 'Toggle floating terminal', silent = true })
-- Vertically split terminal
map({'n', 'v' }, '<leader>tv', ':vsplit<CR>:term<CR>i', { desc = 'Vertically split terminal', silent = true })
-- Horizontally split terminal 
map({'n', 'v' }, '<leader>th', ':split<CR>:term<CR>i', { desc = 'Horizontally split terminal', silent = true })
-- Open terminal in new tab
map({'n', 'v' }, '<leader>tt', ':tabnew<CR>:term<CR>i', { desc = 'Terminal in new tab', silent = true })

-- Telescope keybinds
local builtin = require('telescope.builtin')
local telescope = require('telescope')
map('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
map('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
map('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
map('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
map('n', '<leader>fs', telescope.extensions.sessions_picker.sessions_picker, { desc = 'Telescope sessions' })

-- Save global session with mini.sessions
function write_session()
    vim.ui.input(
        { prompt = 'Session name: ' },
        function(input)
            MiniSessions.write(input)
        end
    )
end
map({'n', 'v'}, '<leader>s', write_session, { desc = 'Save session' })

-- Easily switch to a buffer in view
map('n', 'gb', ':BufferLinePick<CR>', { desc = 'Pick a buffer to switch to' })
-- Easily close a buffer in view
map('n', 'gD', ':BufferLinePickClose<CR>', { desc = 'Pick a buffer to close' })

-- Apply LSP quickfix
local function quickfix()
    vim.lsp.buf.code_action({
        filter = function(a) return a.isPreferred end,
        apply = true
    })
end
map('n', '<leader>x', quickfix, { desc = 'LSP fix' })

-- Format code with LSP
map({'n', 'v'}, '<leader>o', vim.lsp.buf.format, { desc = 'Format code'})
