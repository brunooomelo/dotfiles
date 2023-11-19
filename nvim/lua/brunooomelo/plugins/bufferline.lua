return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	config = function()
		local bufferline = require("bufferline")
		bufferline.setup({
			highlights = require("catppuccin.groups.integrations.bufferline").get(),
			options = {
				mode = "buffers",
			},
		})
	end,
}
