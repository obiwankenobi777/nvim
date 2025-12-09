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
vim.keymap.set("n", "<c-h>", "<c-w><c-h>")
vim.keymap.set("n", "<c-j>", "<c-w><c-j>")
vim.keymap.set("n", "<c-k>", "<c-w><c-k>")
vim.keymap.set("n", "<c-l>", "<c-w><c-l>")
vim.keymap.set("n", "<c-x>", "<c-w><c-x>")

--- buffers
vim.keymap.set("n", "gn", ":bnext<cr>")
-- vim.keymap.set("n", "wn", ":bnext<cr>")
-- vim.keymap.set("n", "wp", ":bprevious<cr>")
-- vim.keymap.set("n", "wd", ":bdelete<cr>")
-- vim.keymap.set("n", "wls", ":ls<cr>")

--- movement
vim.keymap.set("n", "ge", "G")
vim.keymap.set("n", "gl", "$")
vim.keymap.set("n", "gh", "0")
vim.keymap.set("n", "gg", "gg0")

--- INSERT
vim.keymap.set("i", "jk", "<esc>")
vim.keymap.set("i", "<c-u>", "<esc>guiwea")
vim.keymap.set("i", "<c-l>", "<esc>la")
vim.keymap.set("i", "<c-b>", "<esc>ba")
vim.keymap.set("i", "<c-o>", "<esc>o")
vim.keymap.set("i", "<c-d>", "<esc>ddi")
