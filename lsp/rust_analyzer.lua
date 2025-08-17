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
}
