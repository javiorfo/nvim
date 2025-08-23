-- Personal
vim.keymap.set("i", "{<CR>", '{<CR>}<Esc>O', { desc = "Open/close curly brackets" })
vim.keymap.set("n", "<leader>p", function() require("config.functions").term_popcorn:pop() end,
    { desc = "Embedded popup terminal" })

-- LSP
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "LSP: Go to Definition" })
vim.keymap.set("n", "gt", vim.lsp.buf.declaration, { desc = "LSP: Go to Declaration" })
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "LSP: Go to Implementation" })
vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, { desc = "LSP: Type Definition" })
vim.keymap.set("n", "<C-K>", vim.lsp.buf.signature_help, { desc = "LSP: Signature Help" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "LSP: Show Error" })
vim.keymap.set("n", "<leader>rn", function() vim.cmd("Renamid") end, { desc = "LSP: Rename" })
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "LSP: Format" })

-- DAP
return {
    dap_keymaps = function()
        local dap = require("dap")
        local dapui = require("dapui")
        vim.keymap.set("n", "<leader>dt", dap.toggle_breakpoint, { desc = "[D]ebug [T]oggle Breakpoint" })
        vim.keymap.set("n", "<leader>ds", dap.continue, { desc = "[D]ebug [S]tart" })
        vim.keymap.set("n", "<leader>dc", dapui.close, { desc = "[D]ebug [C]lose" })
        vim.keymap.set("n", "<leader>do", dap.step_over, { desc = "[D]ebug [O]ver" })
        vim.keymap.set("n", "<leader>di", dap.step_into, { desc = "[D]ebug [I]nto" })
        vim.keymap.set("n", "<leader>du", dap.step_out, { desc = "[D]ebug o[U]t" })
        vim.keymap.set("n", "<leader>dq", dap.terminate, { desc = "[D]ebug [Q]uit" })
    end
}
