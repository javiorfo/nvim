return {
    "chaosystema/nvim-hemingway",
    lazy = true,
    dependencies = { "chaosystema/nvim-popcorn" },
    cmd = { "HemingwayInfo" },
    keys = {
        { "<leader>co", "<Plug>HemingwayComment" },
        { "<leader>co", "<Plug>HemingwayMultiComment", mode = "v" },
    }
}
