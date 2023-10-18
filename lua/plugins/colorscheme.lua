return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 1000,
		config = function(_)
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
}
