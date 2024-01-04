-- Options
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.g.mapleader = " "

vim.o.relativenumber = true
vim.o.number = true

vim.cmd("set clipboard+=unnamedplus")
vim.cmd("set guicursor=i:block")

-- Keymaps
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", {})
vim.keymap.set("n", "<leader>q", "<cmd>q<cr>", {})
vim.keymap.set("n", "<leader>Q", "<cmd>q!<cr>", {})

vim.keymap.set("n", "<C-d>", "<C-d>zz", {})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {})

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
