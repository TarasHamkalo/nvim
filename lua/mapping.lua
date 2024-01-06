require("helpers/globals")
require("helpers/mapping-functions")

g.mapleader = " "

-- Dap 
--

-- Telescope
nmap("<leader>ff", "<cmd>Telescope find_files<CR>") -- Search for a file (ignoring git-ignore)
nmap("<leader>gb", "<cmd>Telescope git_branches<CR>") -- Show git branches
nmap("<leader>fw", "<cmd>Telescope live_grep<CR>") -- Find a string in project
nmap("<leader>fr", "<cmd>Telescope buffers<CR>") -- Show all buffers
nmap("<leader>ot", "<cmd>Telescope<CR>") -- Show all commands
--

-- Neo Tree
nmap("<leader>n", "<cmd>Neotree toggle<CR>") -- Toggle file explorer
--

-- Hop
nmap("<leader>j", "<cmd>HopWordAC<CR>")
nmap("<leader>k", "<cmd>HopWordBC<CR>")

-- Vim
-- Noh search after ESC
nmap("<ESC>", "<ESC><cmd>noh<CR>")

-- Splits
nmap("<c-h>", "<c-w>h")
nmap("<c-j>", "<c-w>j")
nmap("<c-k>", "<c-w>k")
nmap("<c-l>", "<c-w>l")

nmap("<leader>-", "<cmd>vertical resize -10<CR>")
nmap("<leader>=", "<cmd>vertical resize +10<CR>")

-- Center screen
nmap("<c-u>", "<c-u>zz")
nmap("<c-d>", "<c-d>zz")
nmap("n", "nzz")
nmap("N", "Nzz")

-- Terminal
vim.keymap.set("t", "<ESC>", "<C-\\><C-n>", {noremap = true})

-- Lang
--vim.api.nvim_set_option('langmap', 'ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz')
