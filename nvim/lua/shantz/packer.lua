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

    use ({
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    })
    use {
        'preservim/vim-pencil',
        ft = { 'markdown', 'text', 'tex' },
        config = function()
            -- correct autocmd placed outside of the packer config function
            vim.api.nvim_create_autocmd("FileType", {
                pattern = { "markdown", "text", "tex" },
                callback = function()
                    vim.cmd("PencilSoft")
                end,
            })
        end
    }
    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    })

    use({
        "stevearc/oil.nvim",
        config = function()
            require("oil").setup()
        end,
    })

    use {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup {}
        end
    }

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
