return {
    "javiorfo/nvim-hemingway",
    lazy = true,
    dependencies = { "javiorfo/nvim-popcorn" },
    cmd = { "HemingwayInfo" },
    keys = {
        { "<leader>co", "<Plug>HemingwayComment" },
        { "<leader>co", "<Plug>HemingwayMultiComment", mode = "v" },
    }
}
