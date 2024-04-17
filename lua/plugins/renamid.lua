local languages = require 'settings.languages'

return {
    "javiorfo/nvim-renamid",
    lazy = true,
    ft = languages,
    dependencies = { "javiorfo/nvim-popcorn" }
}
