-- ============================================================================
-- GLOBAL SETs
-- ============================================================================

vim.opt.shortmess:append("I")
vim.cmd("syntax on")
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.number = true
vim.opt.numberwidth = 7
vim.opt.relativenumber = true
vim.opt.mouse = "n"
vim.opt.incsearch = true
vim.opt.encoding = "utf-8"
vim.opt.textwidth = 80
vim.opt.cursorline = true
vim.opt.showtabline = 0
vim.opt.ruler = true
vim.opt.rulerformat = "%15(%p%% %l/%L %c%V%)"
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.background = "dark"
vim.opt.wildmenu = true
vim.opt.swapfile = false
vim.opt.guicursor = "n-v-c-sm-i-ci-ve-r-cr-o:block"
vim.cmd("color wildcharm") 

-- ============================================================================
-- MAPS
-- ============================================================================

vim.g.mapleader = "-"
local map = vim.keymap.set

-- NORMAL mode
map("n", "<leader>ev", ":vsplit $MYVIMRC<CR>")
map("n", "<leader>sv", ":source $MYVIMRC<CR>")
map("n", "<leader>", 'viw<ESC>a"<ESC>hbi"<ESC>lel')
map("n", "\\", "dd")
map("n", "<Space>", "viw")
map("n", "gg" , "0gg")

-- Copy and paste
map("n", "<leader>c", '"ayy')
map("n", "<leader>v", '"ap')

-- INSERTION
map("i", "jk", "<ESC>")
map("i", "<C-u>", "<ESC>gUiwea")
map("i", "<C-l>", "<ESC>la")
map("i", "<C-b>", "<ESC>ba")
map("i", "<C-o>", "<ESC>O")
map("i", "<C-d>", "<ESC>ddi")
map("i", "`", "``<Left>")

-- VISUAL
map("v", "\\", "~")

-- ============================================================================
-- Autopairs
-- ============================================================================
--
--local function autopairs(char)
--    local pairs = {
--        ["("] = ")",
--        ["["] = "]",
--        ["{"] = "}",
--        ['"'] = '"',
--        ["'"] = "'",
--    }
--    local close = pairs[char]
--    if close then
--        return char .. close .. "<Left>"
--    else
--        return char
--    end
--end
--
--local function skip_closing(char)
--    local col = vim.fn.col(".")
--    local line = vim.fn.getline(".")
--    local next_char = line:sub(col, col)
--    if next_char == char then
--        return "<Right>"
--    else
--        return char
--    end
--end
--
---- Insert mode mappings with expr
--map("i", "(", function() return autopairs("(") end, { expr = true })
--map("i", "[", function() return autopairs("[") end, { expr = true })
--map("i", "{", function() return autopairs("{") end, { expr = true })
--map("i", '"', function() return autopairs('"') end, { expr = true })
--map("i", "'", function() return autopairs("'") end, { expr = true })
--
--map("i", ")", function() return skip_closing(")") end, { expr = true })
--map("i", "]", function() return skip_closing("]") end, { expr = true })
--map("i", "}", function() return skip_closing("}") end, { expr = true })

-- ============================================================================

-- Caminho do lazy
local lazypath = vim.fn.stdpath("config") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)

-- Iniciar Lazy e carregar plugins
require("lazy").setup({
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  {
    "nvim-lualine/lualine.nvim"
  },
  {
      "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup({})
    end
  },
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons" -- Ícones bonitos nos arquivos
    },
    config = function()
      require("nvim-tree").setup({})
    end
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- ícones na statusline
    config = function()
      require("lualine").setup({
        options = {
          theme = "auto",     -- usa tema conforme seu colorscheme
          section_separators = { left = "", right = "" },
          component_separators = { left = "", right = "" },
        }
      })
    end
  }
})

-- ============================================================================
-- Keymaps
-- ============================================================================

vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- ============================================================================

