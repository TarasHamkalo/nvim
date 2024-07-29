return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")
    conform.setup({
      formatters_by_ft = {
        lua = { "stylua" },
        json = { { "prettierd", "prettier", stop_after_first = true } },
        markdown = { { "prettierd", "prettier", stop_after_first = true } },
        html = { "htmlbeautifier" },
        xml =  { "xmlformatter" },
        bash = { "beautysh" },
        yaml = { "yamlfix" },
        css = { { "prettierd", "prettier", stop_after_first = true } },
        sh = { "shellcheck" },
      },
      log_level = vim.log.levels.DEBUG
    })

    vim.keymap.set({ "n", "v" }, "<leader>lf", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 5000,
      })
    end, { desc = "Format file or range (in visual mode)" })
  end,
}
