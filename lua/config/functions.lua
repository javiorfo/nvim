local popcorn = require 'popcorn'
local borders = require 'popcorn.borders'

local M = {}

local opts = {
    width = 160,
    height = 40,
    border = borders.rounded_corners_border,
    title = { "  CMD", "Boolean" },
    content = function()
        vim.cmd("start | term")
    end,
    on_close = function()
        local nvim_tree = vim.fn.bufnr("NvimTree_1")
        if vim.fn.bufexists(nvim_tree) and vim.api.nvim_buf_is_valid(nvim_tree) then
            vim.api.nvim_input("<CR>")
        end
    end
}

M.term_popcorn = popcorn:new(opts)

return M
