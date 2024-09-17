local neotree = require("unused.neo-tree")

neotree.setup({
	close_if_last_window = false,
	enable_git_status = true,
	enable_diagnostics = true,
	name = {
		trailing_slash = true,
		use_git_status_colors = true,
		highlight = "NeoTreeFileName",
	},

	window = {
		width = 50,
		mappings = {
			["o"] = "open",
			["/"] = "",
			["om"] = "",
			["oc"] = "",
			["od"] = "",
			["og"] = "",
			["on"] = "",
			["os"] = "",
			["ot"] = "",
		},
	},

	filesystem = {
		filtered_items = {
			visible = false, -- when true, they will just be displayed differently than normal items
			hide_gitignored = false,
		},

		follow_current_file = {
			enabled = true,
			leave_dirs_open = true,
		},

		group_empty_dirs = false
	},
})
