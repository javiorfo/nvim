return {
    "javiorfo/nvim-springtime",
    lazy = true,
    cmd = { "Springtime", "SpringtimeUpdate", "SpringtimeBuild" },
    build = ":SpringtimeBuild",
    dependencies = {
        "javiorfo/nvim-popcorn",
        "javiorfo/nvim-spinetta",
        "hrsh7th/nvim-cmp"
    },
    opts = {
        spring = {
            java_version = {
                selected = 2
            }
        }
    }
}
