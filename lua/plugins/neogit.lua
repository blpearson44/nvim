return {
  "NeogitOrg/neogit",
  lazy = true,
  dependencies = {
    "nvim-lua/plenary.nvim", -- required
    "sindrets/diffview.nvim", -- optional - Diff integration

    -- Only one of these is needed.
    "folke/snacks.nvim", -- optional
  },
  cmd = "Neogit",
  keys = {
    { "<leader>gg", "<cmd>Neogit<cr>", desc = "Show Neogit UI" },
  },
  opts = {
    graph_style = "kitty",
    process_spinner = true,
    integrations = {
      diffview = true,
      snacks = true,
    },
    signs = {
      hunk = { " ", " " },
      item = { " ", " " },
      section = { " ", " " },
    },
  },
}
