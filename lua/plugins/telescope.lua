return {
    "nvim-telescope/telescope.nvim",
    lazy = true,
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-ui-select.nvim",
    },
    config = function()
        require 'telescope'.setup {
            extensions = {
                ["ui-select"] = {
                    require 'telescope.themes'.get_dropdown {}
                }
            },
        }
        require 'telescope'.load_extension("ui-select")
    end,
    keys = {
        { "<leader>ff", "<cmd>Telescope find_files<cr>" },
        { "<leader>fg", "<cmd>Telescope live_grep<cr>" },
        { "<leader>fh", "<cmd>Telescope help_tags<cr>" },
        { "<leader>fs", "<cmd>Telescope current_buffer_fuzzy_find<cr>" },
        { '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>' },
        { "gr",         "<cmd>lua require'telescope.builtin'.lsp_references()<cr>" },
        { "gi",         "<cmd>lua require'telescope.builtin'.lsp_implementations()<cr>" },
        { "<leader>di", "<cmd>lua require'telescope.builtin'.diagnostics()<cr>" },
    }
}
