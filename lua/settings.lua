-- Set associating between turned on plugins and filetype
vim.cmd([[filetype plugin on]])

-- Disable comments on pressing Enter
vim.cmd([[autocmd FileType * setlocal formatoptions-=cro]])

-- FileTypes
vim.cmd([[autocmd BufRead,BufNewFile *.c,*.h set filetype=c]])

vim.api.nvim_create_autocmd("FileType", {
	pattern = "*",
	callback = function()
		vim.opt_local.shiftwidth = 2
		vim.opt_local.tabstop = 2
	end
})

-- File storage
local opt = vim.opt

-- Undo
opt.undofile = true
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

-- No swap
opt.swapfile = false

-- Current line
opt.cursorline = true

-- Column wrap
opt.colorcolumn = "80"
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
opt.shiftwidth = 2
opt.tabstop = 2
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

-- Spell checker
vim.opt.spell = true
vim.opt.spelllang = {"en_us", "cs"}
