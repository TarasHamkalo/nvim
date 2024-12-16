local keymap = vim.keymap -- for conciseness
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Dap 
--

-- Telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", {desc = "Search for a file (ignoring git-ignore)"})

keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<CR>", {desc = "Show git branches"})
keymap.set("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", {desc = "Find a string in project"})
keymap.set("n", "<leader>fr", "<cmd>Telescope buffers<CR>", {desc = "Show all buffers"})
keymap.set("n", "<leader>ot", "<cmd>Telescope<CR>", {desc = "Show all commands"})
--

-- Neo Tree
keymap.set("n", "<leader>n", "<cmd>Neotree toggle<CR>", {desc = "Toggle file explorer"})

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

-- Splits width
keymap.set("n", "<c-h>", "<C-w><", {desc = "Make split wider"})
keymap.set("n", "<c-l>", "<C-w>>", {desc = "Make split narrower"})

-- Split height
keymap.set("n", "<c-k>", "<C-w>+", {desc = "Make split higher"})
keymap.set("n", "<c-j>", "<C-w>-", {desc = "Make split shorter"})


-- keymap.set("n", "<leader>-", "<cmd>vertical resize -10<CR>")
-- keymap.set("n", "<leader>=", "<cmd>vertical resize +10<CR>")

-- Center screen
keymap.set("n", "<c-u>", "<c-u>zz")
keymap.set("n", "<c-d>", "<c-d>zz")
keymap.set("n", "n", "nzz")
keymap.set("n", "N", "Nzz")

-- Terminal
vim.keymap.set("t", "<ESC>", "<C-\\><C-n>", {noremap = true})

-- Lang
--vim.api.nvim_set_option('langmap', 'ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz')
