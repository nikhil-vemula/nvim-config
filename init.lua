vim.opt.wrap = false
vim.opt.cursorline = true

-- Use 2 spaces for tab
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.autoindent = true

-- Realative numbering
vim.opt.number = true
vim.opt.relativenumber=true

-- Show whitespace characters
vim.opt.list = true
vim.opt.listchars = { tab = '» ', space = '·', nbsp = '␣' }

-- Search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Auto cmds
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config.lazy")
require("config.keymaps")
