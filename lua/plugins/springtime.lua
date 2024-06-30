return {
    "chaosystema/nvim-springtime",
    lazy = true,
    enabled = true,
    cmd = { "Springtime", "SpringtimeUpdate" },
    build = function()
        require 'springtime.core'.update()
    end,
    dependencies = {
        "chaosystema/nvim-popcorn",
        "chaosystema/nvim-spinetta",
        "hrsh7th/nvim-cmp"
    },
    opts = {
        spring = {
            java_version = {
                selected = 2
            },
            spring_boot = {
                selected = 4
            },
            project_metadata = {
                group = "com.chaosystema",
                artifact = "chaosystema",
                package_name = "com.chaosystema",
                version = "0.1.0"
            }
        }
    }
}
