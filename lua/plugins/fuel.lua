return {
    "javiorfo/nvim-fuel",
    lazy = true,
    ft = { "c", "go", "java", "lua", "zig" },
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
