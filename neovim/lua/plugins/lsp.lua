return {
    {
        "neovim/nvim-lspconfig",
        lazy = false,
    },

    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function () 
            require("mason").setup()
        end
    },

    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
        },

        config = function ()
            require("mason-lspconfig").setup()
	    require("mason-lspconfig").setup_handlers({
		function (server_name)
                    local lspconfig = require("lspconfig")
		    lspconfig[server_name].setup({
                        capabilities = require('cmp_nvim_lsp').default_capabilities(),
                    })
		end
            })
    	end
    },

    {
        "nvimdev/lspsaga.nvim",
        lazy = false,
        config = function ()
            require("lspsaga").setup({})
        end
    },

    {
        "j-hui/fidget.nvim",
        lazy = false,
        opts = {}
    }
}
