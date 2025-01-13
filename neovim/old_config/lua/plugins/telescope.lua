return {
    'nvim-telescope/telescope.nvim',
    cmd = {
        'Telescope',
    },
    tag = '0.1.3',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope-file-browser.nvim'
    },
    config = function ()
        local telescope = require('telescope')
        telescope.setup({
            preview = { treesitter = true },
            extensions = {
                file_browser = {
                    hijack_netrw = true,
                }
            }
        })

        telescope.load_extension('file_browser')
    end
}