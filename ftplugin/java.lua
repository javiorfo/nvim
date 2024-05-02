local home = os.getenv("HOME")
local jdtls = require 'jdtls'
local dap = require 'dap'

require 'settings.util'.lsp_icons()

local config = {
    ---@diagnostic disable-next-line: undefined-global
    capabilities = capabilities,
    cmd = {
        'jdtls',
        '-data', home .. '/dev/java',
        '--jvm-arg=-javaagent:/usr/local/lib/lombok/lombok.jar',
    },
    root_dir = jdtls.setup.find_root({ '.git', 'mvnw', 'gradlew' }),
    settings = {
        java = {
            codeGeneration = {
                toString = {
                    template = "${object.className}{${member.name()}=${member.value}, ${otherMembers}}"
                }
            },
            configuration = {
                runtimes = {
                    --                     { name = "JavaSE-1.8", path = "/usr/lib/jvm/java-8-openjdk" },
                    { name = "JavaSE-21", path = "/usr/lib/jvm/java-21-openjdk" },
                }
            }
        }
    },
    init_options = {
        bundles = {
            vim.fn.glob(
                "~/.config/nvim/servers/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-0.50.0.jar")
        }
    },
    on_attach = function(client, _)
        client.server_capabilities.semanticTokensProvider = nil
        jdtls.setup_dap({ hotcodereplace = 'auto' })
    end
}

dap.configurations.java = {
    {
        type = 'java',
        request = 'attach',
        name = "Debug (Attach) - Remote",
        hostName = "127.0.0.1",
        port = 8787
    }
}

jdtls.start_or_attach(config)
