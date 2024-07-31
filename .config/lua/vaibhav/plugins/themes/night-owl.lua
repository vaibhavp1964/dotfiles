return {
	"oxfist/night-owl.nvim",
	priority = 1000,
	lazy = false,

	config = function()
		require("night-owl").setup({
			-- These are the default settings
			bold = true,
			italics = true,
			underline = true,
			undercurl = true,
			transparent_background = true,
		})

		vim.cmd("colorscheme night-owl")
	end,
}
