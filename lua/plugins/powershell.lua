return {
  "TheLeoP/powershell.nvim",
  enabled = false,
  ---@type powershell.user_config
  opts = {
    bundle_path = vim.fn.stdpath("data") .. "/mason/packages/powershell-editor-services",
    settings = { powershell = { codeFormatting = { Preset = "OTBS" } } },
  },
  ft = "ps1",
  lazy = false,
}
