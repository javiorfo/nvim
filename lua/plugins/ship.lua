return {
    "javiorfo/nvim-ship",
    lazy = true,
    ft = "ship",
    build = function()
        require 'ship.commands'.build()
    end,
    cmd = { "ShipBuild", "ShipCreate", "ShipCreateEnv" },
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
