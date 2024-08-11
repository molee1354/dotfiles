local color = "nightfly"
if color == "rose-pine" then
    return {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require('rose-pine').setup({
                variant = 'moon',
                styles = {
                    italic = false,
                    bold = false,
                }
            })
            vim.cmd("colorscheme rose-pine")
        end
    }
elseif color == "nightfly" then
    return {
        "bluz71/vim-nightfly-colors",
        name = "nightfly",
        lazy = false,
        priority = 1000,
        config = function()
            require("nightfly")
            vim.cmd("colorscheme nightfly")
        end
    }
elseif color == "gruvbox" then
    return {
        'ellisonleao/gruvbox.nvim',
        name = 'gruvbox',
        config = function()
            require('gruvbox').setup({
                bold = true,
                palette_overrides = {
                    bright_green = "#83c07c",
                }
            })
            vim.cmd("colorscheme gruvbox")
        end
    }
elseif color == "catppuccin" then
    return {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "mocha"
            })
            vim.cmd("colors catppuccin")
        end
    }
elseif color == "tokyonight" then
    return {
        "folke/tokyonight.nvim",
        name = "tokyonight",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            require("tokyonight").setup({
                style = "moon",
            })
            vim.cmd("colorscheme tokyonight")
        end
    }
end
