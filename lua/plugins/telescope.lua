return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"ahmedkhalf/project.nvim",
	},

	config = function()
    require("telescope").setup()

    local preview_utils = require("telescope.previewers.utils")
    preview_utils.ts_highlighter = function(bufnr, ft)
        local lang = vim.treesitter.language.get_lang(ft) or ft
        if not lang or lang == "" then
            return false
        end

        return pcall(vim.treesitter.start, bufnr, lang)
    end

    vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", {desc = "Search for a file (ignoring git-ignore)"})
    vim.keymap.set("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", {desc = "Find a string in project"})
    vim.keymap.set("n", "<leader>fr", "<cmd>Telescope buffers<CR>", {desc = "Show all buffers"})

    vim.keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<CR>", {desc = "Show git branches"})
    vim.keymap.set("n", "<leader>ot", "<cmd>Telescope<CR>", {desc = "Show all commands"})
	end,
}
