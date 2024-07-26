local dap = require("dap")
local dapui = require("dapui")

dapui.setup()

-- vim.keymap.set("n", "<leader>du", function()
-- 	dapui.toggle { layout = 2 }
-- end, {
-- 	desc = "Toggle Simple Debug ui",
-- })

vim.keymap.set("n", "<leader>du", function() dapui.toggle() end, {desc = "Toggle Full Debug ui"})
vim.keymap.set("v", "<leader>de", "<Cmd>lua require(\"dapui\").eval()<CR>", {desc = "Debug evaluate expression"})
vim.keymap.set("n", "<leader>de", "<Cmd>lua require(\"dapui\").eval()<CR>", {desc = "Debug evaluate expression"})
-- dap.listeners.after.event_initialized["dapui_config"] = function()
-- dapui.open()
-- end
-- dap.listeners.before.event_terminated["dapui_config"] = function()
-- 	dapui.close()
-- end
-- dap.listeners.before.event_exited["dapui_config"] = function()
-- 	dapui.close()
-- end
