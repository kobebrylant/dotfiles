return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      hidden = true,
      ignored = false, -- set to true if you also want .gitignore'd files (like node_modules)
      sources = {
        explorer = {
          hidden = false,
          ignored = false,
          layout = {
            preset = "sidebar",
            layout = { width = 32 },
          },
        },
      },
    },
  },
}
