return {
    "javiorfo/nvim-wildcat",
    lazy = true,
    enabled = false,
    cmd = { "WildcatBuild", "WildcatClean", "WildcatUp", "WildcatServer" },
    build = function()
        require 'wildcat.build'.build()
    end,
    dependencies = { "javiorfo/nvim-popcorn", "javiorfo/nvim-spinetta" }
}
