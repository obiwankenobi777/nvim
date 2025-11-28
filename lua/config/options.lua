-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt
local cmd = vim.cmd

opt.shortmess:append("I")
cmd("syntax on")

-- identation
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- search
opt.incsearch = true
opt.smartcase = true

-- automatic writing
opt.autowrite = true
opt.autoread = true

-- codification
opt.encoding = "UTF-8"
opt.textwidth = 80

-- mouse
opt.mouse = "n"

-- status bar
opt.showtabline = 0
opt.ruler = true
opt.laststatus = 2

-- interface
opt.number = true
opt.numberwidth = 7
opt.relativenumber = true
opt.cursorline = true
opt.background = "dark"
opt.termguicolors = true
opt.guicursor = "n-v-c-sm-i-ci-ve-r-cr-o:block"
