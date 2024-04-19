return {
    "javiorfo/nvim-springtime",
    lazy = true,
    cmd = { "Springtime", "SpringtimeUpdate" },
--     build = ":SpringtimeBuild",
    dependencies = {
        "javiorfo/nvim-popcorn",
        "javiorfo/nvim-spinetta",
        "hrsh7th/nvim-cmp"
    },
}
