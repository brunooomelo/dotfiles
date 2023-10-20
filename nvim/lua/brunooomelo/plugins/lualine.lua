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
				lualine_a = { "buffers" },
				lualine_b = { "mode" },
				lualine_c = { "filename" },
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
