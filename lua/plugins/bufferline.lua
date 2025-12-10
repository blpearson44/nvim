return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons", "catppuccin/nvim" },
  opts = {
    highlights = require("catppuccin.special.bufferline").get_theme(),
    options = {
      separator_style = "slant",
    },
  },
}
