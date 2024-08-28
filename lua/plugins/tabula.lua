return {
    "javiorfo/nvim-tabula",
    lazy = true,
    ft = { "sql", "javascript" },
    cmd = { "TabulaBuild" },
    dependencies = {
        "javiorfo/nvim-popcorn",
        "javiorfo/nvim-spinetta",
    },
    build = function()
        require 'tabula.core'.build()
    end,
    opts = {
        db = dofile(os.getenv("HOME") .. "/dev/db/connections.lua")
    }
}
