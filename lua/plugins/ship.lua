return {
    "chaosystema/nvim-ship",
    lazy = true,
    ft = "ship",
    cmd = { "ShipCreate", "ShipCreateEnv" },
    dependencies = {
        "chaosystema/nvim-popcorn",
        "chaosystema/nvim-spinetta",
        "hrsh7th/nvim-cmp"
    },
    opts = {
        response = {
            show_headers = 'res',
            window_type = 'p',
            size = 30
        }
    },
    keys = {
        { "<leader>sh", "<cmd>Ship<cr>" },
        { "<leader>sc", "<cmd>ShipCloseResponse<cr>" }
    }
}
