return {
    "javiorfo/nvim-dbeer",
    lazy = true,
    ft = { "sql", "javascript", "redis" },
    cmd = { "DBeerBuild" },
    dependencies = {
        "javiorfo/nvim-popcorn",
        "javiorfo/nvim-spinetta",
    },
    build = function()
        require 'dbeer.core'.build()
    end,
    opts = {
        db = dofile(os.getenv("HOME") .. "/dev/db/connections.lua")
    }
}
