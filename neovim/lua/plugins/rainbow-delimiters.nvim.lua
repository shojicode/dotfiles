return {
    "HiPhish/rainbow-delimiters.nvim",
    event = {"BufReadPre", "BufNewFile"},
    --[[config = function ()
        local rainbow_delimiters = require("rainbow-delimiters")
	rainbow_delimiters.setup({
	    [[strategy = {
	    	[''] = rainbow_delimiters.strategy['global'],
		vim = rainbow_delimiters.strategy['local'],
	    },
	    query = {
		[''] = 'rainbow_delimiters',
		lua = 'rainbow_blocks',
	    },
	    priority = {
		[''] = 110,
		lua = 210,
	    },
	    highlight = {
		'RainbowDelimiterRed',
		'RainbowDelimiterYellow',
                'RainbowDelimiterBlue',
                'RainbowDelimiterOrange',
                'RainbowDelimiterGreen',
                'RainbowDelimiterViolet',
                'RainbowDelimiterCyan',
	    }
	})
    end]]
}
