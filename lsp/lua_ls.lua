vim.cmd [[hi link @keyword Type]]
return {
    cmd = {
        "lua-language-server",
    },
    filetypes = {
        "lua",
    },
    root_markers = {
        ".git",
        ".luacheckrc",
        ".stylua.toml",
        "stylua.toml",
    },
    settings = {
        Lua = {
            runtine = {
                version = 'LuaJIT'
            },
            diagnostics = {
                globals = { 'vim' }
            },
            telemetry = {
                enable = false
            }
        },
    },
    single_file_support = true,
--     log_level = vim.lsp.protocol.MessageType.Warning,
}
