return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	lazy = true,
	event = { "BufReadPost", "BufNewFile", "VeryLazy" },
	opts = {
		icons_enabled = true,
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
	},
	config = function()
		local lualine = require("lualine")
		-- configure lualine with modified theme
		lualine.setup({
			options = { theme = "catppuccin-mocha" },
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch" },
				lualine_c = { "filename" },
				lualine_x = {},
				lualine_y = {},
				lualine_z = { "filetype" },
			},
		})
	end,
}
