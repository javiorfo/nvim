return {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    init = function ()
        vim.g.loaded = 1
        vim.g.loaded_netrwPlugin = 1
    end,
    opts = {
        diagnostics = {
            enable = true,
            show_on_dirs = true,
            show_on_open_dirs = true
        },
        renderer = {
            group_empty = true
        },
        filters = {
            dotfiles = true
        }
    },
    keys = {
        { "<C-g>", "<cmd>NvimTreeFindFile<cr>" },
        { "<C-c>", "<cmd>NvimTreeClose<cr>" },
    }
}
