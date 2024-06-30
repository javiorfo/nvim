local languages = require'settings.languages'

return {
    "chaosystema/nvim-fuel",
    lazy = true,
    ft = languages,
    dependencies = { "chaosystema/nvim-popcorn" },
    opts = {
        popup = true,
        console_size = 30
    },
    keys = {
        { "<leader>ji", "<Plug>Fuel" },
        { "<leader>jc", "<Plug>FuelStop" }
    }
}
