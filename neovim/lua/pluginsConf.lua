-- nvim-scrollbar
require('scrollbar').setup()

--alpha.nvim
require('alpha').setup(require('alpha.themes.dashboard').config)

--nvim-lsp-installer
require('nvim-lsp-installer').setup {}

--nvim-lsp-config
require('pluginsConf/lspConfig')
--[[for _, server in ipairs(require('nvim-lsp-installer').get_installed_servers()) do
    lspconfig[server.name].setup {
        on_attach = function (client, bufnr)
            navic.attach(client, bufnr)

            if client.name == "sumneko_lua" then
                settings = {
                    Lua = {
                        runtime = {
                            version = 'LuaJIT',
                            path = vim.split(package.path, ';'),
                        },
                        diagnostics = {
                            enable = true,
                            globals = {'vim'},
                        },
                        workspace = {
                            library = vim.api.nvim_get_runtime_file("", true),
                        },
                        telemetry = {
                            enable = false,
                        },
                    },
                }
            end
        end,

        capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
    }
end]]

--fidget.nvim
require('fidget').setup {}

--nvim-cmp
local cmp = require('cmp')
local lspkind = require('lspkind')
cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn['vsnip#anonymous'](args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<CR>'] = cmp.mapping.confirm({select = true}),
    }),
    sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "vsnip" },
        { name = 'path' },
        --{ name = 'nvim_lua' }
    }),

    formatting = {
        format = lspkind.cmp_format({
            mode = 'symbol',
            maxwidth = 50,
            before = function(entry, vim_item)
                return vim_item
            end
        })
    }
})

--[[lspkind.nvim
require('lspkind').init({
    mode = 'symbol_text',
    preset = 'codicons',
    symbol_map = {
      Text = "",
      Method = "",
      Function = "",
      Constructor = "",
      Field = "ﰠ",
      Variable = "",
      Class = "ﴯ",
      Interface = "",
      Module = "",
      Property = "ﰠ",
      Unit = "塞",
      Value = "",
      Enum = "",
      Keyword = "",
      Snippet = "",
      Color = "",
      File = "",
      Reference = "",
      Folder = "",
      EnumMember = "",
      Constant = "",
      Struct = "פּ",
      Event = "",
      Operator = "",
      TypeParameter = ""
    },
})]]

--nvim-treesitter
require('nvim-treesitter.configs').setup {
    highlight = {
        enable = true,
        disable = {}
    },
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
    }
}

--nvim-ts-autotag
require('nvim-ts-autotag').setup()

--lualine.nvim
require('lualine').setup {
    options = {
        icons_enabled = true
    }
}

--bufferline.nvim
require('bufferline').setup {}

--nvim-autopairs
require('nvim-autopairs').setup {}

--indent-blankline.nvim
require('indent_blankline').setup {
    show_current_context = true,
    show_current_context_start = true,
}
