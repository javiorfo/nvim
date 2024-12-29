return {
    "javiorfo/nvim-fuel",
    lazy = true,
    ft = { "c", "go", "java", "kotlin", "lua", "rust" },
    dependencies = { "javiorfo/nvim-popcorn" },
    opts = {
        view = {
            popup = true,
            console_size = 30
        }
    },
    keys = {
        { "<leader>ji", "<Plug>Fuel" },
        { "<leader>jc", "<Plug>FuelStop" }
    }
}
