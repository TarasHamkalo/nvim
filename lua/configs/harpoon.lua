require("helpers.globals")
require("helpers.mapping-functions")

local harpoon = require("harpoon")
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
-- local cmd_ui = require('harpoon.cmd-ui')
-- local term = require("harpoon.term")

-- Tabs
vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<tab>", ui.nav_next)
vim.keymap.set("n", "<s-tab>", ui.nav_prev)

-- Terminal

-- Menus
vim.keymap.set("n", "<leader>h", ui.toggle_quick_menu)
-- vim.keymap.set("n", "<leader>mt", cmd_ui.toggle_quick_menu)

vim.keymap.set("n", "gh", function()
    local count = vim.v.count
    if count == 0 then
        count = 1
    end
    require("harpoon.ui").nav_file(count)
end, { desc = "go to harpoon entry" })

harpoon.setup({
    menu = {
        width = vim.api.nvim_win_get_width(0) - 4,
    }
})
