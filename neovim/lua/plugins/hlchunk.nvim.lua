return {
    "shellRaining/hlchunk.nvim",
    event = {"BufReadPre", "BufNewFile" },
    config = function()
        require("hlchunk").setup({
	    chunk = {
		enable = true,
	    },
	    indent = {
	        enable = true,
	    },
            blank = {
                enable = true,
                chars = {
                    ".",
                },
                style = {
                    { vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID("Whitespace")), "fg", "gui"), " " }
                },
            },
	})
    end
}
