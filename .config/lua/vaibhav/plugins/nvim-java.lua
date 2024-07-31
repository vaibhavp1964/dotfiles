return {
	"nvim-java/nvim-java",
	config = false,
	dependencies = {
		{
			"neovim/nvim-lspconfig",
			opts = {
				servers = {
					jdtls = {
						-- your jdtls configuration goes here
					  require('lspconfig').jdtls.setup({})
          },
				},
				setup = {
					jdtls = function()
						require("java").setup({
							-- your nvim-java configuration goes here
						})
					end,
				},
			},
		},
	},
}
