local cmp = require("cmp")
local lspkind = require("lspkind")

cmp.setup({
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body) -- Luasnip expand
		end,
	},

	-- Mappings for cmp
	mapping = cmp.mapping.preset.insert({
		-- Autocompletion menu
		["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
		["<CR>"] = cmp.mapping.confirm({ select = true }),

		-- Use <C-p> and <C-n> to navigate through completion variants
		["<C-p>"] = cmp.mapping.select_prev_item(), -- previous suggestion
		["<C-n>"] = cmp.mapping.select_next_item(), -- next suggestion
		["<C-u>"] = cmp.mapping.scroll_docs(-4),
		["<C-d>"] = cmp.mapping.scroll_docs(4),
	}),

	sources = cmp.config.sources({
		{ name = "nvim_lsp" }, -- LSP
		{ name = "nvim_lsp_signature_help" }, -- LSP for parameters in functions
		{ name = "nvim_lua" }, -- Lua Neovim API
		{ name = "luasnip" }, -- Luasnip
		{ name = "buffer" }, -- Buffers
		{ name = "path" }, -- Paths
	}, {}),

	formatting = {
		format = lspkind.cmp_format({
			mode = "symbol", -- Show only symbol annotations
			maxwidth = 50, -- Prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
		}),
	},
})

-- Add snippets from Friendly Snippets
require("luasnip.loaders.from_vscode").lazy_load()

-- BIN
-- -- Use <C-e> to abort autocomplete
-- ['<C-e>'] = cmp.mapping({
--   i = cmp.mapping.abort(), -- Abort completion
--   c = cmp.mapping.close(), -- Close completion window
-- }),
