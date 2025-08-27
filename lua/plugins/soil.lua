return {
    "javiorfo/nvim-soil",
    lazy = true,
    ft = "plantuml",
    opts = {
        actions = {
            redraw = true
        },
        image = {
            execute_to_open = function(img)
                return "swayimg " .. img
            end
        }
    }
}
