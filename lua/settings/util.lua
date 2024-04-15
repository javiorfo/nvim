local M = {}

function M.lsp_icons()
    local signs = { Error = " ", Warn = "", Hint = "", Info = "" }
    for type, icon in pairs(signs) do
        local hl = "DiagnosticSign" .. type
        vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
    end
end

local opts = {
    width = 80,
    height = 20,
    border = borders.rounded_corners_border,
    title = { "  CMD", "Boolean" },
    content = function()
        vim.cmd("start | term")
    end
}

M.term_popcorn = popcorn:new(opts)

return M
