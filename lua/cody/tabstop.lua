vim.opt.expandtab = true

local function set_tab_width(width)
vim.opt.shiftwidth = width
vim.opt.softtabstop = width
vim.opt.tabstop = width
end

-- default to 2 spaces
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function ()
    set_tab_width(2)
  end
})

-- override to 4 spaces for these languages
vim.api.nvim_create_autocmd("FileType", {
  pattern = {"python", "go", "css"},
  callback = function()
    set_tab_width(4)
  end
})
