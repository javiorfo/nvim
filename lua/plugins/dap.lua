return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "rcarriga/nvim-dap-ui",
        "nvim-neotest/nvim-nio",
        "leoluz/nvim-dap-go",
    },
    lazy = true,
    ft = { "java", "go", "rust" },
    config = function()
        local dap = require("dap")
        local dapui = require("dapui")

        dapui.setup()

        dap.set_log_level('TRACE')

        dap.listeners.before.launch.dapui_config = function()
            dapui.open()
        end

        -- Go
        require("dap-go").setup()

        -- Rust
        dap.adapters.codelldb = {
            type = 'server',
            port = "${port}",
            executable = {
                command = '/path/to/codelldb', -- Update this path!
                args = { "--port", "${port}" },
            }
        }

        dap.configurations.rust = {
            {
                name = "Launch file",
                type = "codelldb",
                request = "launch",
                program = function()
                    return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/target/debug/', 'file')
                end,
                cwd = '${workspaceFolder}',
                stopOnEntry = false,
            },
        }

        -- Java
        -- mvn spring-boot:run -Dspring-boot.run.jvmArguments="-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:5005"
        dap.adapters.java = function(callback)
            callback({
                type = 'server',
                host = '127.0.0.1',
                port = 5005,
            })
        end

        -- JBOSS
        --[[ dap.configurations.java = {
            {
                type = 'java',
                request = 'attach',
                name = "Debug (Attach) - Remote",
                hostName = "127.0.0.1",
                port = 8787
            }
        } ]]

        -- Main Class
        --[[ dap.configurations.java = {
            {
                type = 'java',
                name = 'Debug (Launch)',
                request = 'launch',
                mainClass = 'Main',
            },
        } ]]

        require"config.keymaps".dap_keymaps()
    end
}
