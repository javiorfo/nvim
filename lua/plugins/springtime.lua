return {
    "javiorfo/nvim-springtime",
    lazy = true,
    enabled = true,
    cmd = { "Springtime", "SpringtimeUpdate" },
    build = function()
        require 'springtime.core'.update()
    end,
    dependencies = {
        "javiorfo/nvim-popcorn",
        "javiorfo/nvim-spinetta",
        "hrsh7th/nvim-cmp"
    },
    opts = {
        spring = {
            project = {
                selected = 3
            },
            java_version = {
                selected = 2
            },
            spring_boot = {
                selected = 4
            },
            project_metadata = {
                group = "com.javi",
                artifact = "app",
                package_name = "com.javi",
                version = "0.1.0"
            }
        }
    }
}
