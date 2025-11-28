--- Keymaps are automatically loaded on the VeryLazy event
--- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
--- Add any additional keymaps here

local map = vim.keymap.set

--- NORMAL
map("n", "-w", ":w")
-- map("n", "-<space>", 'viw<esc>a"<esc>hbi"<esc>lel')
-- map("n", "<space>", "viw")

--- window
map("n", "<C-h>", "<C-w><C-h>")
map("n", "<C-j>", "<C-w><C-j>")
map("n", "<C-k>", "<C-w><C-k>")
map("n", "<C-l>", "<C-w><C-l>")
map("n", "<C-x>", "<C-w><C-x>")

--- buffers
map("n", "nn", ":bnext<CR>")
map("n", "np", ":bprevious<CR>")
map("n", "nd", ":bdelete<CR>")
map("n", "nls", ":ls<CR>")

--- movement
map("n", "ge", "G")
map("n", "gl", "$")
map("n", "gh", "0")
map("n", "gg", "gg0")

--- INSERT
map("i", "jk", "<ESC>")
map("i", "<C-u>", "<ESC>gUiwea")
map("i", "<C-l>", "<ESC>la")
map("i", "<C-b>", "<ESC>ba")
map("i", "<C-o>", "<ESC>O")
map("i", "<C-d>", "<ESC>ddi")
