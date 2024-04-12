return {
    "javiorfo/nvim-fuel",
    lazy = true,
    ft = { "c", "go", "java", "lua", "rust" },
    dependencies = { "javiorfo/nvim-popcorn" },
    config = function()
        require 'fuel'.setup {
            popup = true,
            console_size = 20
        }
    end,
    keys = {
        { "<leader>ji", "<Plug>Fuel" },
        { "<leader>jc", "<Plug>FuelStop" }
    }
}
