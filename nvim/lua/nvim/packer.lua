vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use({
        "rose-pine/neovim",
        as = 'rose-pine',
        config = function()
            vim.cmd("colorscheme rose-pine")
        end
    })
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('theprimeagen/harpoon')
    use('mbbill/undotree')

    use { "neovim/nvim-lspconfig" }
    use { "williamboman/mason.nvim" }
    use { "williamboman/mason-lspconfig.nvim" }
    use { "hrsh7th/nvim-cmp" }
    use { "hrsh7th/cmp-nvim-lsp" }
    use { "hrsh7th/cmp-buffer" }
    use { "hrsh7th/cmp-path" }
    use { "hrsh7th/cmp-cmdline" }
    use { "f-person/git-blame.nvim" }
    use { "L3MON4D3/LuaSnip" }
    use { "numToStr/Comment.nvim",
        config = function()
            require('Comment').setup()
        end
    }
    use { "folke/trouble.nvim",
        cmd = "Trouble",
        config = function()
            require('Comment').setup()
        end
    }
    use { "Pocco81/auto-save.nvim" }
    use { "sindrets/diffview.nvim" }
    use { "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            local npairs = require("nvim-autopairs")
            -- put this to setup function and press <a-e> to use fast_wrap
            npairs.setup({
                fast_wrap = {},
            })

            -- change default fast_wrap
            npairs.setup({
                fast_wrap = {
                    map = "<C-w>",
                    chars = { '{', '[', '(', '"', "'" },
                    pattern = [=[[%'%"%>%]%)%}%,]]=],
                    end_key = '$',
                    before_key = 'h',
                    after_key = 'l',
                    cursor_pos_before = true,
                    keys = 'qwertyuiopzxcvbnmasdfghjkl',
                    manual_position = true,
                    highlight = 'Search',
                    highlight_grey = 'Comment'
                },
            })
        end
    }
end)
