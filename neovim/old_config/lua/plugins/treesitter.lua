return {
    'nvim-treesitter/nvim-treesitter',
    event = 'VimEnter',
    config = function ()
        require('nvim-treesitter.configs').setup({
            ensure_installed = {"lua"},
            auto_install = true,

            highlight = {
                enabled = true
            }
        })
    end
}