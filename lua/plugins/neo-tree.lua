return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons", -- optional, but recommended
  },
  lazy = false, -- neo-tree will lazily load itself
  opts = {
    source_selector = {
      winbar = true,
      statusline = false,
    },
    enable_git_status = true,
    enable_diagnostics = true,
    add_blank_line_at_top = true,
    close_if_last_window = true,
    enable_cursor_hijack = false,
    open_on_single_click = true,
    filesystem = {
      bind_to_cwd = true,
      window = {
        preview = true,
      },
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = false,
      },
    },
    window = {
      auto_expend_width = true,
      win_options = {
        winhighlight = "Normal:Normal,FloatBorder:NeoTreeFloatBorder,VertSplit:NeoTreeVertSplit",
      },
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
