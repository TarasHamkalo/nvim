local map = vim.api.nvim_set_keymap

-- Normal mode keybinding setter
function nmap(key, command)
	map("n", key, command, { noremap = true })
end

-- Input mode keybinding setter
function imap(key, command)
	map("i", key, command, { noremap = true })
end

-- Visual mode keybinding setter
function vmap(key, command)
	map("v", key, command, { noremap = true })
end

-- Terminal mode keybinding setter
function tmap(key, command)
	map("t", key, command, { noremap = true })
end
