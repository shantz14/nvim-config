-- This file can be loaded by calling `lua require('plugins')` from your init.vim

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    ---use ({
        ---'rose-pine/neovim',
        ---as = 'rose-pine',
        ---config = function()
            ---vim.cmd('colorscheme rose-pine')
        ---end
    ---})

    use ({
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    })

    --[[use ({
        "rebelot/kanagawa.nvim",
        as = 'kanagawa',
        config = function()
            vim.cmd('colorscheme kanagawa')
        end
    })]]--

    --[[use ({
        "ellisonleao/gruvbox.nvim",
        as = 'gruvbox',
        config = function()
            vim.cmd('colorscheme gruvbox')
        end
    })]]--

    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    })

    use {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup {}
        end
    }

    use {"shortcuts/no-neck-pain.nvim", tag = "*" }
    require("no-neck-pain").setup({
        buffers = {
            wo = {
                fillchars = "eob: ",
            },
        },
    })

    use {
        "windwp/nvim-ts-autotag",
        event = "InsertEnter",
        config = function()
            require("nvim-ts-autotag").setup {}
        end
    }

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('theprimeagen/harpoon')
    use('mbbill/undotree')

    use ('neovim/nvim-lspconfig')
    use ('williamboman/mason.nvim')
    use ('williamboman/mason-lspconfig.nvim')
    use ('hrsh7th/nvim-cmp')
    use ('hrsh7th/cmp-nvim-lsp')
    use ('hrsh7th/cmp-buffer')
    use ('hrsh7th/cmp-path')
    use ('saadparwaiz1/cmp_luasnip')
    use ('L3MON4D3/LuaSnip')
    use ('rafamadriz/friendly-snippets')

    use ('andweeb/presence.nvim')

end)
-- Gaming gametime
-- I love to game it is so cool
-- Um hello um hello lets get this fricking bread gamers hehehehehehhehehe
-- OK so now its time to set up a color scheme cuz this aint cutting it pal
-- the real question is whether or not to have the line in insert mode or not
-- it is pretty pog so idk gamer lets get this bread tho am i right
