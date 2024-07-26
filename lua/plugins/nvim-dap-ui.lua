return {
	"rcarriga/nvim-dap-ui",
  dependencies = {
    "mfussenegger/nvim-dap",
    "nvim-neotest/nvim-nio"
  },
	event = "VeryLazy",
	config = function(_)
		require("configs.nvim-dap-ui")
	end
}
