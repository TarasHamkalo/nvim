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
nmap("<leader>ju", "<cmd>HopPattern<CR>")

-- Vim
-- Noh search after ESC
nmap("<ESC>", "<ESC><cmd>noh<CR>")

-- Splits
nmap("sh", "<c-w>h")
nmap("sj", "<c-w>j")
nmap("sk", "<c-w>k")
nmap("sl", "<c-w>l")

nmap("ss", ":split<Return>")
nmap("sv", ":vsplit<Return>")
--

-- Splits width

-- decrement 
nmap("<c-h>", "<C-w><")
-- increment
nmap("<c-l>", "<C-w>>")
-- Split height
nmap("<c-k>", "<C-w>+")
nmap("<c-j>", "<C-w>-")


-- nmap("<leader>-", "<cmd>vertical resize -10<CR>")
-- nmap("<leader>=", "<cmd>vertical resize +10<CR>")

-- Center screen
nmap("<c-u>", "<c-u>zz")
nmap("<c-d>", "<c-d>zz")
nmap("n", "nzz")
nmap("N", "Nzz")

-- Terminal
vim.keymap.set("t", "<ESC>", "<C-\\><C-n>", {noremap = true})

-- Lang
--vim.api.nvim_set_option('langmap', 'ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz')
