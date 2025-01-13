local on_attach = function (client, bufnr)
    
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

return {
    'williamboman/mason.nvim',
    dependencies = {
        'neovim/nvim-lspconfig',
        'williamboman/mason-lspconfig'
    },
    event = 'InsertEnter',
    cmd = {
        'Mason',
        'MasonInstall',
    },
    config = function ()
        require('mason').setup()
        require('mason-lspconfig').setup()
        require('mason-lspconfig').setup_handlers {
            function (server_name)
                require('lspconfig')[server_name].setup {
                    on_atach = on_attach,
                    capabilities = capabilities
                }
            end
        }
    end
}