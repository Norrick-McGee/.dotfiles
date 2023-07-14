require("main/remap")
require("plugin")

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- incremental search enabled (search like this: www.*.com) 
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"

-- Enable relative line numbers in insert mode
-- vim.cmd([[autocmd InsertEnter * set norelativenumber]])
-- Disable relative line numbers in normal mode
--vim.cmd([[autocmd InsertLeave * set relativenumber]])

-- Relative line numbers
vim.opt.relativenumber = true
vim.opt.nu = true

-- 4 space as tab
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- share terminal colors with nvim (not needed for now)
-- vim.opt.termguicolors = true

-- show at least 8 lines below current-line (unless EOF)
vim.opt.scrolloff = 8
-- vim.opt.signcolumn = "yes"
-- vim.opt.isfname:append("@-@")


vim.g.mapleader = " "

-- Highlight current line 
vim.wo.cursorline = true
-- vim.cmd("highlight CursorLine guibg=#393f4b")
