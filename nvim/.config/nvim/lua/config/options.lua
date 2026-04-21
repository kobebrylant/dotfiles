-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.winbar = "%=%m %f"
vim.g.lazyvim_python_lsp = "pyright"
vim.opt.title = true
-- This sets the title to: nvim: folder_name
vim.opt.titlestring = "nvim:" .. vim.fn.fnamemodify(vim.fn.getcwd(), ":t")

-- Optional: Update the title when you change directories inside nvim
vim.api.nvim_create_autocmd("DirChanged", {
  callback = function()
    vim.opt.titlestring = "nvim:" .. vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
  end,
})
