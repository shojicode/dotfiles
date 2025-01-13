return {
    'hrsh7th/nvim-cmp',
    event = 'VeryLazy', 
    --InsertEnter, CmdlineEnter, ModeChanged',
    dependencies = {   
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-cmdline'
    },
    config = function ()
        local cmp = require('cmp')
        cmp.setup({
            sources = cmp.config.sources({
                { name = 'nvim_lsp' },
                { name = 'buffer', keyword_length = 2 }
            })
        })

        cmp.setup.cmdline(':', {
            mapping = cmp.mapping.preset.cmdline({}),
            sources = cmp.config.sources({
                { name = 'cmdline'}
            })
        })
    end
}