return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	opts = {
		integrations = {
			harpoon = true,
			mason = true,
			neotree = true,
			noice = true,
			treesitter = true,
			telescope = {
				enabled = true,
			},
			lsp_trouble = true,
		},
	},
	config = function()
		vim.cmd.colorscheme("catppuccin")
	end,
}
