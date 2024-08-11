return {
    'nvim-treesitter/nvim-treesitter-context',
    config = function()
        -- treesitter-context
        require'treesitter-context'.setup{
            enable = false,
            multiline_threshold = 5
        }
        vim.keymap.set("n", "<leader>ji", "TSContextToggle<CR>")
    end
}

