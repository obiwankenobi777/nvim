--- Keyvim.keymap.sets are automatically loaded on the VeryLazy event
--- Default keyvim.keymap.sets that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
--- Add any additional keyvim.keymap.sets here

--- NORMAL
vim.keymap.set("n", "-w", ":w<cr>")
vim.keymap.set("n", "-q", ":q<cr>")
vim.keymap.set("n", "-x", ":x<cr>")
vim.keymap.set("n", "-d", "dd")
vim.keymap.set("n", "-<space>", 'viw<esc>a"<esc>hbi"<esc>lel')
vim.keymap.set("n", "<space>", "viw")

--- window
vim.keymap.set("n", "<C-h>", "<C-w><C-h>")
vim.keymap.set("n", "<C-j>", "<C-w><C-j>")
vim.keymap.set("n", "<C-k>", "<C-w><C-k>")
vim.keymap.set("n", "<C-l>", "<C-w><C-l>")
vim.keymap.set("n", "<C-x>", "<C-w><C-x>")

--- buffers
vim.keymap.set("n", "nn", ":bnext<CR>")
vim.keymap.set("n", "np", ":bprevious<CR>")
vim.keymap.set("n", "nd", ":bdelete<CR>")
vim.keymap.set("n", "nls", ":ls<CR>")

--- movement
vim.keymap.set("n", "ge", "G")
vim.keymap.set("n", "gl", "$")
vim.keymap.set("n", "gh", "0")
vim.keymap.set("n", "gg", "gg0")

--- INSERT
vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("i", "<C-u>", "<ESC>gUiwea")
vim.keymap.set("i", "<C-l>", "<ESC>la")
vim.keymap.set("i", "<C-b>", "<ESC>ba")
vim.keymap.set("i", "<C-o>", "<ESC>O")
vim.keymap.set("i", "<C-d>", "<ESC>ddi")
