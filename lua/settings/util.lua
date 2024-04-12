local M = {}

function M.table_contains_string(tbl, str)
    for _, value in ipairs(tbl) do
        if value == str then
            return true
        end
    end
    return false
end

function M.lsp_icons()
    local signs = { Error = " ", Warn = "", Hint = "", Info = "" }
    for type, icon in pairs(signs) do
        local hl = "DiagnosticSign" .. type
        vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
    end
end

return M
