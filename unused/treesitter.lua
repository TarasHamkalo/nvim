("nvim-treesitter.configs").setup({
	-- Needed parsers
	ensure_installed = {
		"lua",
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
