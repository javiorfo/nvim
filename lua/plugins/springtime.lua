return {
    "javiorfo/nvim-springtime",
    lazy = true,
    cmd = "Springtime",
    build = ":SpringtimeBuild",
    dependencies = {
        "javiorfo/nvim-popcorn",
        "javiorfo/nvim-spinetta",
        "hrsh7th/nvim-cmp"
    },
}
