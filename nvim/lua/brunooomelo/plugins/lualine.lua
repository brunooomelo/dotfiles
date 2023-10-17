return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	lazy = true,
	event = { "BufReadPost", "BufNewFile", "VeryLazy" },
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status") -- to configure lazy pending updates count
		local custom_onelight = require("lualine.themes.onelight")

		-- configure lualine with modified theme
		lualine.setup({
			options = {
				theme = custom_onelight,
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "filename" },
				lualine_c = {},
				lualine_x = {
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
						color = { fg = "#ff9e64" },
					},
					{ "branch" },
				},
				lualine_y = { "filetype" },
				lualine_z = {},
			},
		})
	end,
}
