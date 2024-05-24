return {
    {
        "danymat/neogen",
        dependencies = "nvim-treesitter/nvim-treesitter",
        config = function()
            require('neogen').setup {}
            local opts = { noremap = true, silent = true }
            vim.api.nvim_set_keymap("n", "<Leader>nf", ":lua require('neogen').generate()<CR>", opts)
        end,
        -- Uncomment next line if you want to follow only stable versions
        -- tag = "*"
    }
}
