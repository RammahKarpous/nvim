return {    
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    
    config = function()
        require('telescope').setup({
            defaults = {
                file_ignore_patterns = { "node_modules", "vendor", "stubs", "storage" }
            }
        })

        local builtin = require("telescope.builtin")

        vim.keymap.set('n', '<C-p>', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
        vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})

    end
}
