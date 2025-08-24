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
    on_attach = function(client, _)
        client.server_capabilities.semanticTokensProvider = nil
    end
--     log_level = vim.lsp.protocol.MessageType.Warning,
}
