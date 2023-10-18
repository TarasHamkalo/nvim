return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.3",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"ahmedkhalf/project.nvim",
	},

	config = function()
		require("configs.telescope")
	end,
}
