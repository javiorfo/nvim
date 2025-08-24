return {
    cmd = { 'clangd' },
    filetypes = { 'c' },
    root_markers = { ".git" },
    on_attach = function(client, _)
        client.server_capabilities.semanticTokensProvider = nil
    end
}
