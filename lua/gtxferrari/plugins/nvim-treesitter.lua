return {
	{
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPre", "BufNewFile" },
		build = ":TSUpdate",
		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects",
			"windwp/nvim-ts-autotag",
		},
		config = function()
			local treesitter = require("nvim-treesitter.configs")

			treesitter.setup({
				highlight = {
					enable = true,
				},

				indent = { enable = true },

				autotag = {
					enable = true,
				},

				ensure_installed = {
					"bash",
					"c",
					"c_sharp",
					"cpp",
					"csv",
					"cmake",
					"css",
					"diff",
					"dockerfile",
					"gitignore",
					"git_config",
					"gitcommit",
					"go",
					"gpg",
					"haskell",
					"html",
					"http",
					"java",
					"javascript",
					"json",
					"latex",
					"luadoc",
					"lua",
					"markdown",
					"make",
					"php",
					"python",
					"query",
					"rust",
					"ssh_config",
					"svelte",
					"sql",
					"sxhkdrc",
					"toml",
					"typescript",
					"vim",
					"xml",
					"yaml",
				},
				incremental_selection = {
					enabled = true,
					keymaps = {
						init_selection = "<C-space>",
						node_incremental = "<C-space>",
						scope_incremental = false,
						node_decremental = "<bs>",
					},
				},
			})
		end,
	},
}
