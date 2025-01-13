opt = vim.opt

vim.env.LANG = 'en_US.UTF-8'

opt.number = true
opt.numberwidth = 2
opt.title = true

opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true
opt.signcolumn = "yes"

opt.hidden = true

opt.cul = true --cursor line

opt.laststatus = 3

opt.cmdheight = 0

opt.fillchars = { eob = " " }

opt.guicursor = "n-i-c:ver25"

opt.showmode = false

opt.termguicolors = true


vim.cmd('colorscheme terafox')
