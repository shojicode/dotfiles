local lspconfig = require('lspconfig')
local navic = require('nvim-navic')

local on_attach = function (client, bufnr)
    navic.attach(client, bufnr)
    require 'illuminate'.on_attach(client)
end

lspconfig['sumneko_lua'].setup {
    on_attach = on_attach,
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
            },
            diagnostics = {
                globals = {'vim'},
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
            telemetry = {
                enable = false,
            },
        },
    },
}

lspconfig.texlab.setup {
    on_attach = on_attach,
    single_file_support = true,
    filetypes = {"tex", "latex"}
}
