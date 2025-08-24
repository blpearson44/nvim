return {
  "jpalardy/vim-slime",
  lazy = false,
  enabled = true,
  init = function()
    vim.g.slime_target = "wezterm"
    vim.g.slime_bracketed_paste = 1
    vim.g.slime_default_config = { pane_direction = "right" }
    vim.g.slime_preserve_curpos = 0
  end,
  keys = {
    {
      "<leader>ce",
      ':execute "normal \\<Plug>SlimeLineSend"<CR>j',
      { "n" },
    },
  },
}
