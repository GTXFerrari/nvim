return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"bashls", -- Bash
				"cssls", -- CSS
				"emmet_ls",
				"html", -- HTML
				"lua_ls", -- Lua
				"marksman", -- Markdown
				"powershell_es", -- Powershell
				"prismals", -- TypeScript, Javascript
				"pyright", -- Python
				"svelte", -- Javascript
				"tailwindcss", -- CSS
				"tsserver", -- TypeScript
			},
			-- auto-install configured servers (with lspconfig)
			automatic_installation = true, -- not the same as ensure_installed
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"eslint_d", -- js linter
				"pylint", -- python linter
				"shellcheck", -- bash linter
				"vale", -- Text, Markdown, Latex linter
				"black", -- python formatter
				"isort", -- python formatter
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
			},
		})
	end,
}
