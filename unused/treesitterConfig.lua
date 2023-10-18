local parsers = require("nvim-treesitter.parsers").get_parser_configs()
parsers.c = {
	filetypes = { "c", "cpp", "h" },
}
