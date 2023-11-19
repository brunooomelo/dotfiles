return {
	"windwp/nvim-ts-autotag",
	opts = {},
	config = function()
		require("nvim-treesitter.configs").setup({
			autotag = {
				enable = true,
			},
		})
	end,
}
