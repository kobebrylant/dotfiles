vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set hls")
require("config.lazy")
require("lspconfig").pyright.setup({
  settings = {
    python = {
      pythonPath = vim.fn.system("pyenv which python3"):gsub("\n", ""),
    },
  },
})
require("oil").setup()
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
