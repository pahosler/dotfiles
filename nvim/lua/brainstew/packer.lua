-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = {{'nvim-lua/plenary.nvim'}}
    }

    use ({
            'https://codeberg.org/oahlen/iceberg.nvim',
            as = 'iceberg',
            config = function()
                vim.cmd('colorscheme iceberg')
            end
        })

    use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})
    use('nvim-treesitter/playground')
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')

    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

    use("folke/zen-mode.nvim")
--    use("github/copilot.vim")

    -- Buffer navagation
    use	{
        "nvim-lualine/lualine.nvim",
	requires = { 'kyazdani42/nvim-web-devicons', opts = true }
	}

    -- Markdown preview
    use("ellisonleao/glow.nvim")
    use("simrat39/symbols-outline.nvim")
    -- install without yarn or npm
    use({"iamcco/markdown-preview.nvim", run = function() vim.fn["mkdp#util#install"]() end,})

    -- TODO comments
    use("folke/todo-comments.nvim")

    -- kitty highlights
    use("fladson/vim-kitty")

    -- git diff
    use("sindrets/diffview.nvim")

    -- Editing
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use("tpope/vim-surround")
    use("maxmellon/vim-jsx-pretty")
end)
