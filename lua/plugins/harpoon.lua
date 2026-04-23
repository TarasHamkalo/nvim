return {
	"ThePrimeagen/harpoon",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function(_)
		local harpoon = require("harpoon")
		local mark = require("harpoon.mark")
		local ui = require("harpoon.ui")

		-- Tabs
		vim.keymap.set("n", "<leader>ha", mark.add_file, { desc = "Add buffer to harpoon list" })
		vim.keymap.set("n", "<tab>", ui.nav_next, { desc = "Next harpoon entry" })
		vim.keymap.set("n", "<s-tab>", ui.nav_prev, { desc = "Prev harpoon entry" })


		-- Menus
		vim.keymap.set("n", "<leader>hh", ui.toggle_quick_menu, { desc = "Show harpoon menu" })
		vim.keymap.set("n", "gh", function()
			local count = vim.v.count
			if count == 0 then
				count = 1
			end
			require("harpoon.ui").nav_file(count)
		end, { desc = "Go to harpoon entry" })

		harpoon.setup({
			menu = {
				width = vim.api.nvim_win_get_width(0) - 4,
			},
		})
	end,
}
