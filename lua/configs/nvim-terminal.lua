terminal = require('nvim-terminal').DefaultTerminal;

local silent = { silent = true }
vim.api.nvim_set_keymap('n', '<leader>t', ':lua terminal:toggle()<cr>', silent)
vim.api.nvim_set_keymap('n', '<leader>st1', ':lua terminal:open(1)<cr>', silent)
vim.api.nvim_set_keymap('n', '<leader>st2', ':lua terminal:open(2)<cr>', silent)
vim.api.nvim_set_keymap('n', '<leader>st3', ':lua terminal:open(3)<cr>', silent)

-- require('nvim-terminal').setup({
-- 	window = {
-- 		-- NOTE: width or height may not be applied in some "pos"
-- 		position = 'botright',
-- 		split = 'sp',
-- 		width = 50,
-- 		height = 15,
-- 	},

-- 	disable_default_keymaps = false,
-- -- 	-- toggle_keymap = "<leader>t",
-- -- 	-- increase_height_keymap = "<leader>+",
-- -- 	-- decrease_height_keymap = "<leader>-",
-- -- 	terminals = {
-- -- 		{ keymap = "<leader>st1" },
-- -- 		{ keymap = "<leader>st2" },
-- -- 		{ keymap = "<leader>st3" },
-- -- 	},
-- })
