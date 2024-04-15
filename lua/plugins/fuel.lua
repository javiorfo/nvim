local languages = require'settings.languages'

return {
    "javiorfo/nvim-fuel",
    lazy = true,
    ft = languages,
    dependencies = { "javiorfo/nvim-popcorn" },
    opts = {
        popup = true,
        console_size = 20
    },
    keys = {
        { "<leader>ji", "<Plug>Fuel" },
        { "<leader>jc", "<Plug>FuelStop" }
    }
}
