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
                command = 'codelldb',
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

        vim.keymap.set("n", "<leader>dt", dap.toggle_breakpoint, { desc = "[D]ebug [T]oggle Breakpoint" })
        vim.keymap.set("n", "<leader>ds", dap.continue, { desc = "[D]ebug [S]tart" })
        vim.keymap.set("n", "<leader>dc", dapui.close, { desc = "[D]ebug [C]lose" })
        vim.keymap.set("n", "<leader>do", dap.step_over, { desc = "[D]ebug [O]ver" })
        vim.keymap.set("n", "<leader>di", dap.step_into, { desc = "[D]ebug [I]nto" })
        vim.keymap.set("n", "<leader>du", dap.step_out, { desc = "[D]ebug o[U]t" })
        vim.keymap.set("n", "<leader>dq", dap.terminate, { desc = "[D]ebug [Q]uit" })
    end
}
