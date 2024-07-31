return {
	"VonHeikemen/fine-cmdline.nvim",
	dependencies = { "MunifTanjim/nui.nvim" },

	config = function()
		local cmdline = require("fine-cmdline")

		cmdline.setup({
			cmdline = {
				enable_keymaps = true,
				smart_history = true,
				prompt = "❯ ",
			},
		})

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set("n", ":", "<cmd>FineCmdline<cr>", { desc = "Open floating terminal window" })
	end,
}
