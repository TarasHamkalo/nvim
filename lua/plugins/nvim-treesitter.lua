return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	event = {
		"BufReadPost",
		"BufNewFile",
	},
	config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = {
        "markdown",
        "lua",
        "vim",
        "vimdoc",
        "c",
        "java",
				"query",
				"javascript",
				"typescript",
				"html",
				"css",
				"json",
				"gitignore",
				"go",
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
	end,
}
