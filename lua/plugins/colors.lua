return {
  -- Coloscheme
  {
    "olimorris/onedarkpro.nvim",
    enabled = false,
    lazy = false,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      color_overrides = {},
      transparent_background = false,
      background = {
        dark = "mocha",
      },
      styles = {
        comments = { "italic" },
        conditionals = { "italic" },
      },
      integrations = {
        snacks = {
          enabled = true,
        },
        cmp = true,
        neotree = true,
        telescope = {
          enabled = true,
        },
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = true,
        mini = {
          enabled = true,
          indentscope_color = "",
        },
        noice = true,
        octo = true,
        markdown = true,
        neogit = true,
        dashboard = true,
        gitgutter = true,
        leap = true,
        native_lsp = {
          enabled = true,
          virtual_text = {
            errors = { "italic" },
            hints = { "italic" },
            warnings = { "italic" },
            information = { "italic" },
            ok = { "italic" },
          },
          underlines = {
            { nil },
          },
          inlay_hints = {
            background = true,
          },
        },
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}
