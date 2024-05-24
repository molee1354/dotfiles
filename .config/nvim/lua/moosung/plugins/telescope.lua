return {
    'nvim-telescope/telescope.nvim',
    version = '0.1.6',
    dependencies = {'nvim-lua/plenary.nvim'},
    config = function()
        require('telescope').setup({})
        local builtin = require('telescope.builtin')
        local telescope = require('telescope')

        telescope.setup {
            pickers = {
                find_files = {
                    hidden = true
                }
            }
        }

        vim.keymap.set('n', '<C-p>', builtin.find_files, {})
        vim.keymap.set('n', '<leader>pf', builtin.git_files, {})
        vim.keymap.set('n', '<leader>ps', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") });
        end)
        vim.keymap.set('n', '<leader>ph', builtin.live_grep, {})
    end
}
