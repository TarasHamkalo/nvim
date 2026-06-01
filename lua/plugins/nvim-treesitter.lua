return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	-- event = {
	-- 	"BufReadPost",
	-- 	"BufNewFile",
	-- },
	dependencies = {
		"nvim-treesitter/nvim-treesitter-context",
	},
	config = function()
		local parsers = {
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
			"python",
		}

		local group = vim.api.nvim_create_augroup("JustTreesitter", { clear = true })
		vim.api.nvim_create_autocmd({ "BufEnter", "FileType" }, {
			group = group,
			callback = function()
				if vim.bo.buftype ~= "" then
					return
				end

				pcall(vim.treesitter.start, 0)
			end,
		})

		vim.api.nvim_create_autocmd("User", {
			group = group,
			pattern = "VeryLazy",
			once = true,
			callback = function()
				require("nvim-treesitter").install(parsers)
			end,
		})

		-- local configs = require("nvim-treesitter.configs")
		-- configs.setup({
		-- 	ensure_installed = {
		-- 		"markdown",
		-- 		"lua",
		-- 		"vim",
		-- 		"vimdoc",
		-- 		"c",
		-- 		"java",
		-- 		"query",
		-- 		"javascript",
		-- 		"typescript",
		-- 		"html",
		-- 		"css",
		-- 		"json",
		-- 		"gitignore",
		-- 		"go",
		-- 		"python",
		-- 	},
		--
		-- 	sync_install = false,
		--
		-- 	highlight = {
		-- 		enable = true,
		--       -- disable = { "markdown", "markdown_inline" },
		-- 		-- disable = {},
		-- 	},
		--
		-- 	indent = {
		-- 		enable = false,
		-- 		disable = {},
		-- 	},
		-- })

		require("treesitter-context").setup({
			enable = true,
			max_lines = 3, -- how many parent scopes to show
			trim_scope = "outer",
		})
	end,
}
