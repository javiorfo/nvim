return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    enabled = false,
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup {
            ensure_installed = { "c", "lua", "java", "rust", "go" },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        }
    end
}
