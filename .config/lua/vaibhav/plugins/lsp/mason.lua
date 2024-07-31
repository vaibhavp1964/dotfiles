return {
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	dependencies = {
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- enable mason and configure icons
		require("mason").setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		require("mason-lspconfig").setup({
			-- list of servers for mason to install
			ensure_installed = {
				"gopls",
				"jsonls",
				"lua_ls",
				"yamlls",
			},
		})

		-- import mason-tool-installer
		local mason_tool_installer = require("mason-tool-installer")

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
				"gofumpt", -- go formatter
				"goimports", -- manage go imports
				"golines", -- formats long lines
			},
		})
	end,
}
