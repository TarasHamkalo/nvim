return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	event = {
		"BufReadPost",
		"BufNewFile",
	},
	config = function()
		require("configs.treesitter")
	end,
}
