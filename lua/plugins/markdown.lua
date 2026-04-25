return {
  {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = "cd app && yarn install",
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
  end,
  ft = { "markdown"},
  },

  {
    'tigion/nvim-asciidoc-preview',
    ft = { 'asciidoc' },
    build = 'cd server && npm install --omit=dev --no-save',
    ---@module 'asciidoc-preview'
    ---@type asciidoc-preview.Config
    opts = {
      -- Add user configuration here
    },
  }
}
