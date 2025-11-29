-- vim.options are automatically loaded before lazy.nvim startup
-- Default vim.options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional vim.options here

vim.opt.shortmess:append("I")
vim.cmd("syntax on")

-- identation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

-- search
vim.opt.incsearch = true
vim.opt.smartcase = true

-- automatic writing
vim.opt.autowrite = true
vim.opt.autoread = true

-- codification
vim.opt.encoding = "UTF-8"
vim.opt.textwidth = 80

-- mouse
vim.opt.mouse = "n"

-- status bar
vim.opt.showtabline = 0
vim.opt.ruler = true
vim.opt.laststatus = 2

-- interface
vim.opt.number = true
vim.opt.numberwidth = 7
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.background = "dark"
vim.opt.termguicolors = true
vim.opt.guicursor = "n-v-c-sm-i-ci-ve-r-cr-o:block"
