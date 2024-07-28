return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-path",
    -- "f3fora/cmp-spell",
		-- "hrsh7th/cmp-emoji",
    "micangl/cmp-vimtex",
		"hrsh7th/cmp-nvim-lsp-signature-help",
		"hrsh7th/cmp-nvim-lua",
		"rafamadriz/friendly-snippets",
	},

	config = function()
		require("configs.nvim-cmp")
	end,
}
