local rose = require("rose-pine")
local gruvbox = require("gruvbox")

local color = "rose-pine"
function Draw(userColor)
    if userColor then
        color = userColor
    end

    rose.setup({
        disable_background = true
    })
    gruvbox.setup({
        disable_background = true
    })

    vim.cmd.colorscheme(color)
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

function BgReset(userColor)
    if userColor then
        color = userColor
    end

    rose.setup({
        disable_background = false
    })
    gruvbox.setup({
        disable_background = false
    })


    vim.cmd("hi clear")
    vim.cmd.colorscheme(color)
end

-- Draw("rose-pine-moon")
vim.cmd [[command! -nargs=? Draw lua Draw(<args>)]]
vim.cmd [[command! -nargs=? BgReset lua BgReset(<args>)]]
