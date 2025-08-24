return {
    cmd = { "gopls" },
    filetypes = { "go", "gomod", "gowork", "gotmpl", "gosum" },
    root_markers = { "go.mod", "go.work", ".git" },
    on_attach = function(client, _)
        client.server_capabilities.semanticTokensProvider = nil
    end
}
