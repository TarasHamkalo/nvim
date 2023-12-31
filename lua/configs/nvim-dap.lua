local dap = require("dap")

vim.keymap.set("n", "<F9>", function()
	dap.continue()
end, { desc = "Continue debugging" })

vim.keymap.set("n", "<F8>", function()
	dap.step_over()
end, { desc = "Step over" })

vim.keymap.set("n", "<F7>", function()
	dap.step_into()
end, { desc = "Step into" })

vim.keymap.set("n", "<s-F8>", function()
	dap.step_out()
end, { desc = "Step out" })

vim.keymap.set("n", "<leader>db", function()
	dap.toggle_breakpoint()
end, {
	desc = "Toggle Debug breakpoint",
})

vim.keymap.set("n", "<leader>ds", function()
	dap.close()
end, {
	desc = "Toggle Debug breakpoint",
})

vim.keymap.set("n", "<leader>dB", function()
	local condition = vim.fn.input "Breakpoint condition: "
	dap.set_breakpoint(condition)
end, {
	desc = "Toggle Debug conditional Breakpoint",
})

-- vim.keymap.set("n", "<F6>", function()
-- 	dap.repl.open()
-- end, { desc = "Open REPL" })
