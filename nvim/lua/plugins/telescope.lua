-- Telescope finder (https://github.com/nvim-telescope/telescope.nvim)
require('telescope').setup{
    defaults = {
        mappings = {
            i = {
                ["<C-h>"] = "which_key"
            }
        }
    },
    pickers = {
    },
    extensions = {
    }
}

