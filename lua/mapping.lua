local keymap = vim.keymap -- for conciseness
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Dap 
--
-- Explorer
keymap.set("n", "<leader>n", "<cmd>Explore<CR>", {desc = "Toggle file explorer"})
vim.api.nvim_create_autocmd("FileType", {
  pattern = "netrw",
  callback = function()
    pcall(vim.keymap.del, "n", "s", { buffer = true })
    pcall(vim.keymap.del, "n", "S", { buffer = true })
    pcall(vim.keymap.del, "n", "D", { buffer = true })

    vim.keymap.set("n", "D", function()
      local dir = vim.b.netrw_curdir
      local file = vim.fn.expand("<cfile>")
      local fullpath = dir .. "/" .. file

      vim.fn.system({ "trash-put", fullpath})
      vim.cmd("Explore")
    end, { buffer = true })
  end,
})

-- Vim
-- Noh search after ESC
keymap.set("n", "<ESC>", "<ESC><cmd>noh<CR>", {desc = "Remove highlight"})

-- Splits
keymap.set("n", "sh", "<c-w>h", {desc = "Split h"})
keymap.set("n", "sj", "<c-w>j", {desc = "Split j"})
keymap.set("n", "sk", "<c-w>k", {desc = "Split k"})
keymap.set("n", "sl", "<c-w>l", {desc = "Split l"})

keymap.set("n", "ss", ":split<Return>", {desc = "Split horizontally"})
keymap.set("n", "sv", ":vsplit<Return>", {desc = "Split vertically"})
--

-- -- Splits width
-- keymap.set("n", "<c-h>", "<C-w><", {desc = "Make split wider"})
-- keymap.set("n", "<c-l>", "<C-w>>", {desc = "Make split narrower"})
--
-- -- Split height
-- keymap.set("n", "<c-k>", "<C-w>+", {desc = "Make split higher"})
-- keymap.set("n", "<c-j>", "<C-w>-", {desc = "Make split shorter"})

-- Resizing splits with a fixed step (5 columns/lines)
keymap.set("n", "<C-w><left>",  "<cmd>vertical resize -5<cr>",  { desc = "Move border left" })
keymap.set("n", "<C-w><right>", "<cmd>vertical resize +5<cr>",  { desc = "Move border right" })
keymap.set("n", "<C-w><up>",    "<cmd>resize +5<cr>",           { desc = "Move border up" })
keymap.set("n", "<C-w><down>",  "<cmd>resize -5<cr>",           { desc = "Move border down" })

-- Center screen
keymap.set("n", "<c-u>", "<c-u>zz")
keymap.set("n", "<c-d>", "<c-d>zz")
keymap.set("n", "n", "nzz")
keymap.set("n", "N", "Nzz")

-- Lang
--vim.api.nvim_set_option('langmap', 'ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz')
