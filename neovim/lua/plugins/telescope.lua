return {
    "nvim-telescope/telescope.nvim",
    -- tag = "0.1.8",
    event = "VimEnter",

    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-file-browser.nvim",
    },

    config = function ()
        require("telescope").setup({})
        require("telescope").load_extension("file_browser")
    end
}
