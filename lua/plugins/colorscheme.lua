return {
    {
        "rose-pine/neovim",
        name = "rose-pine",
        priority = 1000,
        -- config = function(_)
        --     vim.cmd.colorscheme("rose-pine-moon")
        -- end,
    },
    {
        "ellisonleao/gruvbox.nvim",
        name = "gruvbox",
        priority = 1000,
        -- config = function(_)
        -- 	vim.o.background = "black"
        -- 	vim.cmd.colorscheme("gruvbox")
        -- end,
    },
    {
        "blazkowolf/gruber-darker.nvim",
        name = "darker",
        opts = {
            bold = false,
            italic = {
                strings = false,
            },
        },
        priority = 1000,
        config = function(_)
            vim.cmd.colorscheme("gruber-darker")
        end,
    }
}
