return {
	"nvim-telescope/telescope.nvim",
	-- tag = "0.1.5",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"ahmedkhalf/project.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},

	config = function()
		require("telescope").setup({
			defaults = {
				layout_strategy = "vertical",
				layout_config = {
					width = 0.6,
					height = 0.9,
					preview_height = 0.7, -- preview on top, results below
					prompt_position = "top",
				},
				sorting_strategy = "ascending",
			},
		})

		local preview_utils = require("telescope.previewers.utils")
		preview_utils.ts_highlighter = function(bufnr, ft)
      if not ft or ft == "" then
        return false
      end

			local lang = vim.treesitter.language.get_lang(ft) or ft
			if not lang or lang == "" then
				return false
			end

			return pcall(vim.treesitter.start, bufnr, lang)
		end

		vim.keymap.set(
			"n",
			"<leader>ff",
			"<cmd>Telescope find_files<CR>",
			{ desc = "Search for a file (ignoring git-ignore)" }
		)
		vim.keymap.set("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "Find a string in project" })
		vim.keymap.set("n", "<leader>fu", function()
			local word = vim.fn.expand("<cword>")
			require("telescope.builtin").grep_string({ search = word })
		end)

		vim.keymap.set("n", "<leader>fr", "<cmd>Telescope buffers<CR>", { desc = "Show all buffers" })
		vim.keymap.set("n", "<leader>ot", "<cmd>Telescope<CR>", { desc = "Show all commands" })
		vim.keymap.set("n", "<leader>fg", "<cmd>Telescope git_status<CR>", { desc = "Show all git modified" })
		-- vim.keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<CR>", { desc = "Show git branches" })
	end,
}
