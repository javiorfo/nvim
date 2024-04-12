return {
    "nvim-lualine/lualine.nvim",
    lazy = false,
    config = function()
        require 'lualine'.setup {
            options = {
                disabled_filetypes = { 'NvimTree' }
            }
        }
    end
}
