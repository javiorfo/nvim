return {
    cmd = { 'clangd' },
    filetypes = { 'c' },
    root_markers = {
        '.clangd',
        '.clang-tidy',
        '.clang-format',
        'compile_commands.json',
        'compile_flags.txt',
        '.git',
    },
    on_attach = function(client, _)
        client.server_capabilities.semanticTokensProvider = nil
    end
}
