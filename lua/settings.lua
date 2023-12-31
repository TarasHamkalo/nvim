require("helpers/globals")

-- Set associating between turned on plugins and filetype
cmd([[filetype plugin on]])

-- Disable comments on pressing Enter
cmd([[autocmd FileType * setlocal formatoptions-=cro]])

-- FileTypes
cmd([[autocmd BufRead,BufNewFile *.c,*.h set filetype=c]])



-- File storage
-- vim.opt.undofile = true
-- vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

-- No swap
vim.opt.swapfile = false

-- Current line
opt.cursorline = true

-- Column wrap
opt.colorcolumn = "100"
opt.compatible = false

-- Set scrolloff to 10 lines
opt.scrolloff = 10

-- Enable line numbers and relative line numbers
opt.number = true
opt.relativenumber = true

--(DEFAULT FOR NVIM) Hide the mouse cursor while typing
-- opt.mousehide = true

-- long lines
opt.wrap = false

-- some colors
opt.termguicolors = true

-- show sign column so that text doesn't shift
opt.signcolumn = "yes"

-- Disable error bells
opt.errorbells = false

-- Turn off all bells
opt.visualbell = false

-- NO FOLDS
vim.wo.foldenable = false
-- Tabs
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.smartindent = true

-- Clipboard
opt.clipboard = "unnamedplus"
opt.fixeol = false

-- Folding
-- opt.foldmethod = 'syntax'

-- Search
opt.ignorecase = true
opt.incsearch = true
opt.joinspaces = false
opt.smartcase = true
opt.showmatch = true
opt.matchtime = 1

-- Window
opt.splitbelow = true
opt.splitright = true

-- Wild Menu
opt.wildmenu = true
opt.wildmode = "longest:full,full"

-- -- Default Plugins {{{
-- local disabled_built_ins = {
-- 	--"netrw",
-- 	--"netrwPlugin",
-- 	--"netrwSettings",
-- 	--"netrwFileHandlers",
-- 	"gzip",
-- 	"zip",
-- 	"zipPlugin",
-- 	"tar",
-- 	"tarPlugin",
-- 	"getscript",
-- 	"getscriptPlugin",
-- 	"vimball",
-- 	"vimballPlugin",
-- 	"2html_plugin",
-- 	"logipat",
-- 	"rrhelper",
-- 	"spellfile_plugin",
-- 	"matchit",
-- }
--
-- for _, plugin in pairs(disabled_built_ins) do
-- 	g["loaded_" .. plugin] = 1
-- end
