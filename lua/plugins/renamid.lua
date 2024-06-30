local languages = require 'settings.languages'

return {
    "chaosystema/nvim-renamid",
    lazy = true,
    ft = languages,
    dependencies = { "chaosystema/nvim-popcorn" }
}
