-- Set <Space> as leader key
-- NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '


-- [[ Plugins ]]
local Plug = vim.fn['plug#']
vim.call('plug#begin')

Plug('folke/which-key.nvim')
Plug('okuuva/auto-save.nvim')
Plug('m4xshen/autoclose.nvim') -- auto bracket closing
Plug('RRethy/vim-illuminate')
Plug('nvim-lua/plenary.nvim')
Plug('goolord/alpha-nvim')
Plug('voldikss/vim-floaterm') -- could replace this with a simple homemade function
Plug('karb94/neoscroll.nvim')
-- Plug('seandewar/bad-apple.nvim')

Plug('nvim-mini/mini.nvim')
Plug('folke/snacks.nvim')

-- telescope
Plug('nvim-telescope/telescope.nvim')
Plug('nvim-telescope/telescope-fzf-native.nvim', { ['do'] = 'make' })
Plug('JoseConseco/telescope_sessions_picker.nvim')

-- treesitter
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate', ['branch'] = 'main' })

-- nvim-tree
Plug('nvim-tree/nvim-web-devicons')
Plug('nvim-tree/nvim-tree.lua')

-- LSP
Plug('mason-org/mason.nvim')
Plug('mason-org/mason-lspconfig.nvim')
Plug('neovim/nvim-lspconfig')
Plug('saecki/crates.nvim', { ['tag'] = 'stable' })

-- snippets
Plug('dcampos/nvim-snippy')
Plug('honza/vim-snippets')

-- nvim-cmp
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('dcampos/cmp-snippy')
Plug('garyhurtz/cmp_kitty')
Plug('hrsh7th/nvim-cmp')

-- colorschemes
Plug('Shatur/neovim-ayu', { ['as'] = 'ayu' })
Plug('EdenEast/nightfox.nvim')
Plug('scottmckendry/cyberdream.nvim')

-- latex
Plug('lervag/vimtex', { ['tag'] = 'v2.17' })
Plug('micangl/cmp-vimtex')

vim.call('plug#end')

require('keybinds')
