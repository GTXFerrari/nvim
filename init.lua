-- Required for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- Load files
require('user.plugins')
require('user.options')
require('user.keymaps')
require('user.nvim-tree')
require('user.colorscheme')
require('user.lualine')
require('user.cmp')
require('user.lsp')
require('user.telescope')
require('user.treesitter')
