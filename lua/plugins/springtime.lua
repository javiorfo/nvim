return {
    "javiorfo/nvim-springtime",
    lazy = true,
    enabled = true,
    cmd = { "Springtime", "SpringtimeUpdate", "SpringtimeBuild" },
    build = function()
        require'springtime.core'.build()
    end,
    dependencies = {
        "javiorfo/nvim-popcorn",
        "javiorfo/nvim-spinetta",
        "hrsh7th/nvim-cmp"
    },
    opts = {
        spring = {
            java_version = {
                selected = 2
            },
            project_metadata = {
                group = "com.orfosys",
                artifact = "orfosys",
                package_name = "com.orfosys",
                version = "0.1.0"
            }
        },
        workspace = {
            path = "/home/javier/java"
        }
    }
}
