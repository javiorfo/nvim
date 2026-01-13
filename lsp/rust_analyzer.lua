return {
    cmd = { "rust-analyzer" },
    filetypes = { "rust" },
    root_markers = { "Cargo.toml", "Cargo.lock", ".git" },
    settings = {
        ["rust-analyzer"] = {
            cargo = { allFeatures = true },
            check = {
                command = "clippy",
            },
            checkOnSave = true,
        },
    },
    on_attach = function(client, _)
        client.server_capabilities.semanticTokensProvider = nil
    end
}
