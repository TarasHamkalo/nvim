return {
	"jay-babu/mason-nvim-dap.nvim",
	event = "VeryLazy",

	dependencies = {
		"williamboman/mason.nvim",
		"mfussenegger/nvim-dap",
	},

	config = function(_)
		require("configs.mason-nvim-dap")
	end
}
