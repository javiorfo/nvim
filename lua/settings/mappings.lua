local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap('i', '{<CR>', '{<CR>}<Esc>O', opts)
vim.api.nvim_set_keymap('n', '<leader>p', '<cmd>lua require("settings.util").term_popcorn:pop()<CR>', opts)
