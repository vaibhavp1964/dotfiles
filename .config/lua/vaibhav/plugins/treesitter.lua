return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		-- import nvim-treesitter plugin
		local treesitter = require("nvim-treesitter.configs")

		-- configure treesitter
		treesitter.setup({
			-- enable syntax highlighting
			highlight = {
				enable = true,
			},

			sync_install = false,
			ignore_install = {},
			auto_install = true,
			modules = {},

			-- enable indentation
			indent = { enable = true },

			-- enable autotagging (w/ nvim-ts-autotag plugin)
			autotag = {
				enable = true,
			},

			-- ensure these language parsers are installed
			ensure_installed = {
				"json",
				"yaml",
				"bash",
				"lua",
				"vim",
				"dockerfile",
				"gitignore",
				"csv",
				"go",
				"java",
				"jq",
				"python",
				"sql",
				"tsv",
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
		})
	end,
}
