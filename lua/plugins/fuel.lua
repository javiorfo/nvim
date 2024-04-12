local languages = require'settings.languages'

return {
    "javiorfo/nvim-fuel",
    lazy = true,
    ft = languages,
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
