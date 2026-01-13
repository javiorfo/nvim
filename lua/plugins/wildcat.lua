return {
    "javiorfo/nvim-wildcat",
    lazy = true,
    enabled = false,
    cmd = { "WildcatRun", "WildcatUp", "WildcatServer" },
    event = { "BufReadPost pom.xml" },
    ft = { "java" },
    dependencies = { "javiorfo/nvim-popcorn", "javiorfo/nvim-spinetta" },
}
