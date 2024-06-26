local popcorn = require 'popcorn'
local borders = require 'popcorn.borders'

local M = {}
function M.lsp_icons()
    local signs = { Error = " ", Warn = "", Hint = "", Info = "" }
    for type, icon in pairs(signs) do
        local hl = "DiagnosticSign" .. type
        vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
    end
end

local opts = {
    width = 100,
    height = 30,
    border = borders.rounded_corners_border,
    title = { "  CMD", "Boolean" },
    content = function()
        vim.cmd("start | term")
    end
}

M.term_popcorn = popcorn:new(opts)

return M
