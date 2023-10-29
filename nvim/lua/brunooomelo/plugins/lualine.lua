return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	lazy = true,
	event = { "BufReadPost", "BufNewFile", "VeryLazy" },
	opts = {
		icons_enabled = false,
		component_separators = "",
		section_separators = "",
	},
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status") -- to configure lazy pending updates count
		local custom_onelight = require("lualine.themes.nightfly")

		-- configure lualine with modified theme
		lualine.setup({
			options = {
				theme = custom_onelight,
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
			},
			sections = {
				lualine_b = { "buffers" },
				lualine_a = { "mode" },
				lualine_c = {},
				lualine_x = {},
				lualine_y = {
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
						color = { fg = "#ff9e64" },
					},
					{ "branch" },
				},
				lualine_z = { "filetype" },
			},
		})
	end,
}
