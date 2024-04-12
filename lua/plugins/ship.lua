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
    config = function()
        require 'ship'.setup {
            response = {
                show_headers = 'res',
                window_type = 'p',
                size = 30
            },
        }
    end,
    keys = {
        { "<leader>sh", "<cmd>Ship<cr>" },
        { "<leader>sc", "<cmd>ShipCloseResponse<cr>" }
    }
}
