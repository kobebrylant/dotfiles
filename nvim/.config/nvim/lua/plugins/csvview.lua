-- ~/.config/nvim/lua/plugins/csvview.lua
-- or directly in your lazy.nvim spec list

return {
  "hat0uma/csvview.nvim",
  ---@module "csvview"
  ---@type CsvView.Options
  opts = {
    parser = { comments = { "#", "//" } },
    keymaps = {
      -- Text objects for selecting fields
      textobject_field_inner = { "if", mode = { "o", "x" } },
      textobject_field_outer = { "af", mode = { "o", "x" } },
      -- Excel-like navigation:
      jump_next_field_end = { "<Tab>", mode = { "n", "v" } },
      jump_prev_field_end = { "<S-Tab>", mode = { "n", "v" } },
      jump_next_row = { "<Enter>", mode = { "n", "v" } },
      jump_prev_row = { "<S-Enter>", mode = { "n", "v" } },
    },
  },
  cmd = { "CsvViewEnable", "CsvViewDisable", "CsvViewToggle" },

  -- Add a custom command and keymap for the specific display_mode=border header_lnum=1
  keys = {
    {
      "<leader>cve", -- example: Leader + c + v + e (enable border + header line 1)
      function()
        vim.cmd("CsvViewEnable display_mode=border header_lnum=1")
      end,
      desc = "Enable CSV view with border mode and header line 1",
      mode = "n",
    },
  },
  config = function(_, opts)
    -- Apply the plugin's default setup with your opts
    require("csvview").setup(opts)

    -- Optional: create a user command for the same behaviour
    vim.api.nvim_create_user_command("CsvViewBorder", function()
      vim.cmd("CsvViewEnable display_mode=border header_lnum=1")
    end, { desc = "Enable CSV view with border display mode and header line 1" })
  end,
}
