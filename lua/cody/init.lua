require("cody.remap")
require("cody.tabstop")

-- relative line numbers
vim.opt.relativenumber = true
vim.opt.number = true

-- preserve a space on the left-hand side for diagnostics (warnings and shit)
vim.opt.signcolumn = "yes"

vim.opt.clipboard:append('unnamedplus')

vim.bo.fileformat = "unix"

