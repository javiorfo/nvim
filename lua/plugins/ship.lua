return {
    "javiorfo/nvim-ship",
    lazy = true,
    ft = "ship",
    cmd = { "ShipCreate", "ShipCreateEnv" },
    dependencies = {
        "javiorfo/nvim-popcorn",
        "javiorfo/nvim-spinetta",
        "hrsh7th/nvim-cmp"
    },
    opts = {
        response = {
            show_headers = 'all',
            window_type = 'p',
            size = 30
        }
    },
    keys = {
        { "<leader>sh", "<cmd>Ship<cr>" },
        { "<leader>sc", "<cmd>ShipCloseResponse<cr>" }
    }
}
