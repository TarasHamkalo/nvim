-- Some mapping is located also in "lua/after/auto.lua"
local keymap = vim.keymap -- for conciseness
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Explorer
keymap.set("n", "<leader>n", "<cmd>Explore<CR>", {desc = "Toggle file explorer"})
vim.api.nvim_create_autocmd("FileType", {
  pattern = "netrw",
  callback = function()
    -- update local window directory for move/copy and other to work in nav
    vim.cmd("lcd " .. vim.b.netrw_curdir)
    vim.opt.number = true
    vim.opt.relativenumber = true

    pcall(vim.keymap.del, "n", "D", { buffer = true })
    vim.keymap.set("n", "D", function()
      local selected = vim.fn.expand("<cfile>:p")
      vim.fn.system({ "trash-put", selected })
      vim.cmd("edit .") -- refresh netrw
    end, { buffer = true })

    vim.keymap.set("n", "<C-Q>", function()
      local marked = vim.fn["netrw#Expose"]("netrwmarkfilelist")
      if marked == "n/a" then
        print("No marked files")
        return
      end
      --
      local qf = {}
      for _, file in ipairs(marked) do
        if vim.fn.isdirectory(file) == 0 then
          table.insert(qf, {
            filename = file,
            lnum = 1,
            text = "",
          })
        end
      end

      vim.fn.setqflist(qf)
      vim.cmd("copen")
    end, { buffer = true })
  end,
})


-- Fugitive
keymap.set("n", "<leader>m", "<cmd>Git<CR>", {desc = "Toggle Git Menu"})

-- Vim
-- Noh search after ESC
keymap.set("n", "<ESC>", "<ESC><cmd>noh<CR>", {desc = "Remove highlight"})

-- Resizing splits with a fixed step (5 columns/lines)
keymap.set("n", "<C-A-h>", "<cmd>vertical resize -5<cr>")
keymap.set("n", "<C-A-l>", "<cmd>vertical resize +5<cr>")
keymap.set("n", "<C-A-k>", "<cmd>resize +5<cr>")
keymap.set("n", "<C-A-j>", "<cmd>resize -5<cr>")

-- Center screen
keymap.set("n", "<c-u>", "<c-u>zz")
keymap.set("n", "<c-d>", "<c-d>zz")
keymap.set("n", "n", "nzz")
keymap.set("n", "N", "Nzz")

-- Lang
--vim.api.nvim_set_option('langmap', 'ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz')


-- Splits (just stick to defaults)
-- keymap.set("n", "sh", "<c-w>h", {desc = "Split h"})
-- keymap.set("n", "sj", "<c-w>j", {desc = "Split j"})
-- keymap.set("n", "sk", "<c-w>k", {desc = "Split k"})
-- keymap.set("n", "sl", "<c-w>l", {desc = "Split l"})

-- keymap.set("n", "ss", ":split<Return>", {desc = "Split horizontally"})
-- keymap.set("n", "sv", ":vsplit<Return>", {desc = "Split vertically"})

-- -- Splits width
-- keymap.set("n", "", "<C-w><", {desc = "Make split wider"})
-- keymap.set("n", "", "<C-w>>", {desc = "Make split narrower"})
--
-- -- Split height
-- keymap.set("n", "<c-k>", "<C-w>+", {desc = "Make split higher"})
-- keymap.set("n", "<c-j>", "<C-w>-", {desc = "Make split shorter"})

-- Resizing splits with a fixed step (5 columns/lines)
-- keymap.set("n", "<c-h>",  "<cmd>vertical resize -5<cr>",  { desc = "Move border left" })
-- keymap.set("n", "<c-l>", "<cmd>vertical resize +5<cr>",  { desc = "Move border right" })
-- keymap.set("n", "<c-k>",    "<cmd>resize +5<cr>",           { desc = "Move border up" })
-- keymap.set("n", "<c-j>",  "<cmd>resize -5<cr>",           { desc = "Move border down" })
