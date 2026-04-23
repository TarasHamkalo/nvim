return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },

        c = { "clang-format" },
				-- Prettier everywhere
				json = { "prettierd", "prettier", stop_after_first = true },
				jsonc = { "prettierd", "prettier", stop_after_first = true },
				markdown = { "prettierd", "prettier", stop_after_first = true },
				html = { "prettierd", "prettier", stop_after_first = true },
				css = { "prettierd", "prettier", stop_after_first = true },

				yaml = { "prettierd", "prettier", stop_after_first = true },

				python = { "black" },

				go = { "goimports", "gofmt" },

				xml = { "xmllint" },
			},

			formatters = {
				prettier = {
					prepend_args = {
						"--trailing-comma",
						"none",
					},
				},
				prettierd = {
          command = "prettierd",
          args = { "$FILENAME" },
          stdin = false,
				},

      xmllint = {
        command = "xmllint",
        args = { "--format", "-", "--recover" },
        stdin = true,
      },
			},
			log_level = vim.log.levels.ERROR,
		})

		vim.keymap.set({ "n", "v" }, "<leader>lf", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 3000,
			})
		end, { desc = "Format file or range" })
	end,
}
