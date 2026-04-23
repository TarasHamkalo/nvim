vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(e)
        local opts = { noremap = true, silent = true, buffer = e.buf}
        opts.desc = "Go to declaration"
        vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts) -- go to declaration

        opts.desc = "Show LSP type definitions"
        vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts) -- show lsp type definitions

        opts.desc = "Show LSP type definitions"
        vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts) -- show lsp type definitions

        opts.desc = "Show LSP references"
        vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<CR>", opts) -- show definition, references

        opts.desc = "Show LSP implementations"
        vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts) -- show lsp implementations

        opts.desc = "Show LSP type definitions"
        vim.keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts) -- show lsp type definitions

        opts.desc = "See available code actions"
        vim.keymap.set({ "n", "v" }, "<leader>ca", function() vim.lsp.buf.code_action() end, opts) -- see available code actions, in visual mode will apply to selection

        opts.desc = "Smart rename"
        vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts) -- smart rename

        opts.desc = "Show line diagnostics"
        vim.keymap.set("n", "<leader>d", function() vim.diagnostic.open_float() end, opts) -- show diagnostics for line

        opts.desc = "Go to previous diagnostic"
        vim.keymap.set("n", "[d", function() vim.diagnostic.goto_prev() end, opts) -- jump to previous diagnostic in buffer

        opts.desc = "Go to next diagnostic"
        vim.keymap.set("n", "]d", function() vim.diagnostic.goto_next() end, opts) -- jump to next diagnostic in buffer

        opts.desc = "Show documentation for what is under cursor"
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts) -- show documentation for what is under cursor
  end
})
