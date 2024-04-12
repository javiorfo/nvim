vim.g.mapleader = " "

vim.opt.number = true
vim.opt.autoindent = true
vim.opt.ignorecase = true
vim.opt.termguicolors = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.softtabstop = 4

vim.opt.mouse = "a"
vim.opt.hidden = true
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.showmode = false
vim.opt.shortmess = vim.opt.shortmess + { F = true, W = true }

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require'settings.mappings'

require("lazy").setup("plugins")
