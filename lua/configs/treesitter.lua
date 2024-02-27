local configs = require("nvim-treesitter.configs")

configs.setup({
	ensure_installed = {
		"markdown",
		"lua",
		"vim",
		"vimdoc",
		"c",
		"java",
	},

	sync_install = false,

	highlight = {
		enable = true,
		disable = {},
	},

	indent = {
		enable = false,
		disable = {},
	},
})
