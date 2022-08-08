vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    use 'petertriho/nvim-scrollbar'

    use 'goolord/alpha-nvim'

    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'
    use 'RRethy/vim-illuminate'

    use 'folke/trouble.nvim'
    use 'j-hui/fidget.nvim'

    use 'hrsh7th/nvim-cmp'
    use 'onsails/lspkind-nvim'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-nvim-lua'

    use 'nvim-treesitter/nvim-treesitter'
    use 'windwp/nvim-ts-autotag'
    use 'p00f/nvim-ts-rainbow'

    use 'hrsh7th/vim-vsnip'

    use 'nvim-lualine/lualine.nvim'

    use {'SmiteshP/nvim-navic', requires = "neovim/nvim-lspconfig"}

    use 'akinsho/bufferline.nvim'

    use 'kyazdani42/nvim-web-devicons'

    use 'windwp/nvim-autopairs'

    use 'lambdalisue/fern.vim'

    use "lukas-reineke/indent-blankline.nvim"
end)
