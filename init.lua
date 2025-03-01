vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2

vim.wo.number = true
 
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("config.lazy")
require("config.keymaps")
