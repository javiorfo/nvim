local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap('i', '{<CR>', '{<CR>}<Esc>O', opts)
