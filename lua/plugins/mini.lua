return {
  "nvim-mini/mini.files",
  lazy = false,
  opts = {
    source_selector = {
      winbar = false,
      statusline = true,
    },
    mappings = {
      go_in_plus = "l",
    },
    windows = {
      preview = true,
      width_preview = 50,
    },
    options = {
      use_as_default_explorer = false,
    },
    event_handlers = {
      {
        event = "neo_tree_buffer_enter",
        handler = function()
          vim.cmd("highlight! Cursor blend=100")
        end,
      },
      {
        event = "neo_tree_buffer_leave",
        handler = function()
          vim.cmd("highlight! Cursor guibg=#5f87af blend=0")
        end,
      },
    },
  },
}
