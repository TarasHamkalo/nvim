return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",

    "onsails/lspkind-nvim",

    "hrsh7th/cmp-nvim-lsp",
		"L3MON4D3/LuaSnip",
		"hrsh7th/cmp-nvim-lsp-signature-help",
		"hrsh7th/cmp-nvim-lua",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/nvim-cmp",
    "saadparwaiz1/cmp_luasnip",
    "micangl/cmp-vimtex",

		{
      "antosha417/nvim-lsp-file-operations",
      config = true
    },

	},
	config = function()
    local cmp = require('cmp')
    local cmp_lsp = require("cmp_nvim_lsp")
    local capabilities = vim.tbl_deep_extend(
        "force",
        {},
        vim.lsp.protocol.make_client_capabilities(),
        cmp_lsp.default_capabilities()
    )

    local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end

    require("conform").setup({
      formatters_by_ft = {}
    })

    require("mason").setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })


    require("mason-tool-installer").setup({
      ensure_installed = {
        "prettier",
        "prettierd",
        "stylua",
        -- "luacheck",
        "xmlformatter",
        "yamlfix",
      },
    })

    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",
        "gopls",
        "vtsls",
        "tailwindcss",
        -- "clangd",
      },
      handlers = {
        function(server_name) -- default handler (optional)
          require("lspconfig")[server_name].setup {
              capabilities = capabilities
          }
        end,

        ["lua_ls"] = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup {
              capabilities = capabilities,
              settings = {
                  Lua = {
                      runtime = {
                          version = 'LuaJIT',
                      },
                      diagnostics = {
                          globals = { 'vim' },
                      },
                      workspace = {
                          library = vim.api.nvim_get_runtime_file("", true),
                          checkThirdParty = false,
                      },
                      format = {
                          enable = true,
                          -- Put format options here
                          -- NOTE: the value should be STRING!!
                          defaultConfig = {
                              indent_style = "space",
                              indent_size = "2",
                          }
                      },
                  }
              }
            }
        end,
        ["tailwindcss"] = function()
            local lspconfig = require("lspconfig")
            lspconfig.tailwindcss.setup({
                capabilities = capabilities,
                filetypes = { "html", "css", "scss", "javascript", "javascriptreact", "typescript", "typescriptreact", "vue", "svelte", "heex" },
            })
        end,
      },
    })



    local cmp_select = { behavior = cmp.SelectBehavior.Select }
    cmp.setup({
      snippet = {
        expand = function(args)
          require("luasnip").lsp_expand(args.body) -- Luasnip expand
        end,
      },

      -- Mappings for cmp
      mapping = cmp.mapping.preset.insert({
        -- Autocompletion menu
        ["<C-Enter>"] = cmp.mapping.complete(), -- show completion suggestions
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select), -- previous suggestion
        ["<C-n>"] = cmp.mapping.select_next_item(cmp_select), -- next suggestion
        ["<C-u>"] = cmp.mapping.scroll_docs(-4),
        ["<C-d>"] = cmp.mapping.scroll_docs(4),
      }),

      sources = cmp.config.sources({
        { name = "nvim_lsp" }, -- LSP
        { name = "nvim_lsp_signature_help" }, -- LSP for parameters in functions
        { name = "nvim_lua" }, -- Lua Neovim API
        { name = "buffer" }, -- Buffers
        { name = "path" }, -- Paths
        { name = 'vimtex'}
      }),

      formatting = {
        format = require("lspkind").cmp_format({
          mode = "symbol", -- Show only symbol annotations
          maxwidth = 50, -- Prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
        }),
      },
    })
  end,
}
