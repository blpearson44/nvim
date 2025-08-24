return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      checkbox = {
        enabled = true,
        render_modes = false,
        bullet = false,
        right_pad = 1,
        unchecked = {
          icon = "󰄱 ",
          highlight = "RenderMarkdownUnchecked",
          scope_highlight = nil,
        },
        checked = {
          icon = "󰱒 ",
          highlight = "RenderMarkdownChecked",
          scope_highlight = nil,
        },
        custom = {
          todo = { raw = "[-]", rendered = "󰥔 ", highlight = "RenderMarkdownTodo", scope_highlight = nil },
        },
      },
    },
    enabled = false,
  },
  {
    -- For `plugins/markview.lua` users.
    {
      "OXY2DEV/markview.nvim",
      lazy = false,
      enabled = true,

      -- For `nvim-treesitter` users.
      priority = 49,
      ---@type markview.config.markdown_inline
      preview = {
        modes = { "i", "n", "no", "c" },
        hybrid_modes = { "i" },

        linewise_hybrid_mode = true,
      },

      -- For blink.cmp's completion
      -- source
      -- dependencies = {
      --     "saghen/blink.cmp"
      -- },
    },
  },
}
