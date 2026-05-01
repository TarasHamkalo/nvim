return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	event = {
		"BufReadPost",
		"BufNewFile",
	},
  dependencies = {
    "nvim-treesitter/nvim-treesitter-context"
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

    require("treesitter-context").setup({
      enable = true,
      max_lines = 3, -- how many parent scopes to show
      trim_scope = "outer",
    })
	end,
}
