local lsp_icons = require 'settings.util'.lsp_icons
local languages = require 'settings.languages'
local table_contains_string = require'settings.util'.table_contains_string

return {
    "neovim/nvim-lspconfig",
    lazy = true,
    ft = languages,
    config = function()
        if table_contains_string(languages, "java") then
            return
        end

        lsp_icons()

        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

        local on_attach = function(client, _)
            client.server_capabilities.semanticTokensProvider = nil
        end

        local lsp_config = require 'lspconfig'
        require 'lspconfig.ui.windows'.default_options.border = 'rounded'

        -- C
        if table_contains_string(languages, "c") then
            lsp_config.clangd.setup {
                on_attach = on_attach,
                capabilities = capabilities,
            }
        end

        -- Go
        if table_contains_string(languages, "go") then
            lsp_config.gopls.setup {
                on_attach = on_attach,
                capabilities = capabilities,
            }
        end

        -- Kotlin
        if table_contains_string(languages, "kotlin") then
            lsp_config.kotlin_language_server.setup {
                on_attach = on_attach,
                capabilities = capabilities,
                settings = {
                    kotlin = {
                        compiler = {
                            jvm = { target = "17" }
                        }
                    }
                },
            }
        end

        -- Lua
        if table_contains_string(languages, "lua") then
            lsp_config.lua_ls.setup {
                on_attach = on_attach,
                capabilities = capabilities,
                settings = {
                    Lua = {
                        runtime = {
                            version = 'LuaJIT'
                        },
                        diagnostics = {
                            globals = { 'vim' }
                        },
                        telemetry = {
                            enable = false
                        }
                    }
                }
            }
        end

        -- Rust
        if table_contains_string(languages, "rust") then
            lsp_config.rust_analyzer.setup {
                on_attach = on_attach,
                capabilities = capabilities,
                settings = {
                    ["rust-analyzer"] = {
                        checkOnSave = { command = "clippy" }
                    }
                }
            }
        end
    end,
    keys = {
        { 'gD',         '<cmd>lua vim.lsp.buf.declaration()<CR>' },
        { 'gd',         '<cmd>lua vim.lsp.buf.definition()<CR>' },
        { 'K',          '<cmd>lua vim.lsp.buf.hover()<CR>' },
        { '<C-k>',      '<cmd>lua vim.lsp.buf.signature_help()<CR>' },
        { '<leader>e',  '<cmd>lua vim.diagnostic.open_float()<CR>' },
        { '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>' },
        { '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>' },
        { '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>' },
        { '<leader>D',  '<cmd>lua vim.lsp.buf.type_definition()<CR>' },
        { '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>' },
        { '<leader>f',  '<cmd>lua vim.lsp.buf.format{ async = true }<CR>' }
    }
}
