return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 1000,
		config = function()
			require("rose-pine").setup({
				disable_background = false,
				styles = {
					italic = false,
				},

				enable = {
					terminal = true,
					legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
					migrations = true, -- Handle deprecated options automatically
				},
        highlight_groups = {
            Normal = { bg = "#1f1d2e" }, -- slightly darker than default
            NormalNC = { bg = "#1f1d2e" },
        },
			})

			vim.cmd.colorscheme("rose-pine-moon")
		end,
	},
	{
		"ellisonleao/gruvbox.nvim",
		name = "gruvbox",
		priority = 1000,
		-- config = function(_)
		-- 	vim.o.background = "black"
		-- 	vim.cmd.colorscheme("gruvbox")
		-- end,
	},
	{
		"blazkowolf/gruber-darker.nvim",
		name = "darker",
		opts = {
			bold = false,
			italic = {
				strings = false,
			},
		},
		priority = 1000,
		config = function(_)
			-- vim.cmd.colorscheme("gruber-darker")
		end,
	},
}
