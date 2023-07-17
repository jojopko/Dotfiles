
return require('packer').startup(function()

    use 'wbthomason/packer.nvim'

-- LSP Configuration

    use {
        "williamboman/mason.nvim",
        config = function()
            require('plugins/mason')
        end,
        run = ':MasonUpdate'
    }

    use {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require('plugins/mason-lspconfig')
        end
    }

    use {
        "neovim/nvim-lspconfig",
        config = function()
            require('plugins/lspconfig')
        end
    }

-- Snippet

    use {
        "L3MON4D3/LuaSnip",
        run = "make install_jsregexp"
    }

-- Autocompletes

    use {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "saadparwaiz1/cmp_luasnip",
        },
        config = function()
            require('plugins/nvim-cmp')
        end
    }

    use 'saadparwaiz1/cmp_luasnip'

    use 'hrsh7th/cmp-buffer'

    use 'hrsh7th/cmp-path'

    use 'hrsh7th/cmp-cmdline'

    use 'hrsh7th/cmp-nvim-lsp'

--- Themes

    use {
        'ray-x/aurora',
        config = function()
            require('plugins/aurora')
        end
    }

-- Dev icons

    use 'nvim-tree/nvim-web-devicons'

-- Bottom line

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true },
        config = function()
            require('plugins/lualine')
        end
    }

-- Opened buffers view on top

    use {
        'akinsho/bufferline.nvim',
        requires = 'nvim-tree/nvim-web-devicons',
        config = function()
            require('plugins/buffer-line')
        end
    }

-- Close buffers without close window

    use 'qpkorr/vim-bufkill'

-- Git integration

    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('plugins/gitsigns')
        end
    }

-- File Tree

    use 'nvim-lua/plenary.nvim'

    use 'nvim-treesitter'

    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
        config = function()
            require('plugins/neo-tree')
        end
    }

-- Fast search files

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { {'nvim-lua/plenary.nvim'} },
        config = function()
            require('plugins/telescope')
        end
    }

-- Commentary

use {
    'b3nj5m1n/kommentary',
    config = function ()
        require "plugins.kommentary"
    end
}


end)
