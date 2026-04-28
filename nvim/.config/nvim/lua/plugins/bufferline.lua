return {
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        style_preset = require("bufferline").style_preset.minimal, -- or .default
        separator_style = "thin", -- "slant" | "slope" | "thick" | "thin" | { "X", "Y" }
        indicator = {
          style = "icon", -- "icon" | "underline" | "none"
        },
        show_buffer_close_icons = true,
        show_close_icon = false,
        color_icons = true,
        diagnostics = "nvim_lsp",
      },
    },
  },
}
