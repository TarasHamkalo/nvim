return {
	"s1n7ax/nvim-terminal",
	config = function()
		vim.o.hidden = true
		require("configs.nvim-terminal");
	end,
}
