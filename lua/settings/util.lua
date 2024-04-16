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
    width = 80,
    height = 20,
    border = borders.rounded_corners_border,
    title = { "  CMD", "Boolean" },
    content = function()
        vim.cmd("start | term")
    end
}

M.term_popcorn = popcorn:new(opts)

local function rename_in_buffer(bufnr, new_name)
    vim.api.nvim_buf_call(bufnr, function()
        vim.lsp.buf.rename(new_name, { bufnr = bufnr })
    end)
end

local function are_lsp_clients_running()
    local lsp_clients = vim.lsp.buf_get_clients(0)

    if lsp_clients == nil or #lsp_clients < 1 then
        return false
    end
    return true
end

function M.rename()
    if are_lsp_clients_running() then
        local bufnr = vim.api.nvim_get_current_buf()
        local word = vim.fn.expand('<cword>')
        local opts2 = {
            width = 28,
            height = 3,
            border = borders.rounded_corners_border,
            title = { "Rename", "Boolean" },
            content = { { word } },
            callback_keymap = "<CR>",
            callback = function()
                rename_in_buffer(bufnr, vim.fn.getline(1))
            end,
            do_after = function()
                vim.cmd [[startinsert]]
                vim.api.nvim_win_set_cursor(0, { 1, (#word + 2) })
            end
        }

        popcorn:new(opts2):pop()
    end
end

return M
