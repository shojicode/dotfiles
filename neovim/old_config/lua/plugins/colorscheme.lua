local colorscheme = 'iceberg'


if colorscheme == 'nord' then
    return {
    'shaunsingh/nord.nvim',
    event = 'VimEnter',
    config = function ()
        vim.g.nord_contrast = true
        require('nord').set()
    end
    }
elseif colorscheme == 'iceberg' then
    return {
        'cocopon/iceberg.vim',
        lazy = false,
        --event = 'VimEnter',
        config = function ()
            vim.cmd('colorscheme iceberg')
        end
    }
end