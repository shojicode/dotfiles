return {
    {
        "hrsh7th/nvim-cmp",

        config = function ()
	    local cmp = require("cmp")
	    local map = cmp.mapping
            cmp.setup({
		mapping = map.preset.insert({
		    ['<C-d>'] = map.scroll_docs(-4),
		    ['<C-f>'] = map.scroll_docs(4),
		    ['<C-Space>'] = map.complete(),
		    ['<C-e>'] = map.abort(),
		    ['<CR>'] = map.confirm {select = false},
		}),

                sources = cmp.config.sources({
                    { name = "nvim_lsp" },
                    { name = "nvim_lua" },
                    { name = "skkeleton" },
                }),
    	    })

            cmp.setup.cmdline({ '/', '?' }, {
                mapping = cmp.mapping.preset.cmdline(),
                sources = {
                    { name = 'buffer' }
                }
            })

            cmp.setup.cmdline(':', {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources({
                    { name = 'path' }
                },
                {
                    { name = 'cmdline' },
                })
            })
        end,
        
        event = "VeryLazy",
        dependencies = {
            "hrsh7th/cmp-nvim-lua",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-buffer",
            {
                "vim-skk/skkeleton",
                config = function ()
                    dicts = function ()
                        local dict_filenames = {"SKK-JISYO.L", "SKK-JISYO.propernoun", "SKK-JISYO.geo", "SKK-JISYO.jinmei", "SKK-JISYO.station", "SKK-JISYO.assoc", "SKK-JISYO.edict"}

                        local dicts = {}
                        for _, v in ipairs(dict_filenames) do
                            table.insert(dicts, "~/skk/"..v)
                        end
                        return dicts
                    end
                    vim.fn["skkeleton#config"]({
                        globalDictionaries = dicts(),
                        eggLikeNewline = true
		})
                end,
                dependencies = {
                    "rinx/cmp-skkeleton",
                    "vim-denops/denops.vim"
                }
            },
        },
    },
}
