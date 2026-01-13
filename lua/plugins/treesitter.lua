return {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",
    config = function()
        require 'nvim-treesitter.configs'.setup {
            ensure_installed = { "c", "go", "java", "lua", "rust" },
            highlight = {
                enable = true
            }
        }
    end
}
