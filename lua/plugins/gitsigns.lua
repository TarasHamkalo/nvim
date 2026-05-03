return {
	"lewis6991/gitsigns.nvim",
	lazy = false,
	config = function()
    require('gitsigns').setup({
      current_line_blame = true,
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = 'right_align',
        delay = 1000,
        ignore_whitespace = false,
      },
    })
    vim.keymap.set("n", "<C-W>g", function()
      require("gitsigns").preview_hunk()
    end, { desc = "Preview git hunk" })

    vim.keymap.set("n", "[g", function()
      require("gitsigns").nav_hunk('prev')
    end, { desc = "Go to prev git hunk" })

    vim.keymap.set("n", "]g", function()
      require("gitsigns").nav_hunk('next')
    end, { desc = "Go to next git hunk" })
	end
}

