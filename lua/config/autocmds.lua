-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.bo.tabstop = 2
    vim.bo.shiftwidth = 2
    vim.bo.expandtab = true
  end,
})
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown", "text" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.spell = true
    vim.opt_local.spelllang = "en_us"
    vim.opt_local.linebreak = true
    vim.opt_local.breakindent = true
  end,
})
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "ps1", "psd1", "psm1" },
  callback = function()
    vim.bo.tabstop = 4
    vim.bo.shiftwidth = 4
    vim.bo.expandtab = false
  end,
})
vim.api.nvim_create_autocmd("FileType", {
  callback = function()
    vim.keymap.set("n", "<leader>ct", function()
      require("powershell").toggle_term()
    end, { desc = "PowerShell Terminal" })
    vim.keymap.set({ "n", "x", "v" }, "<leader>cE", function()
      require("powershell").eval()
    end, { desc = "PowerShell Eval" })
  end,
})
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    if vim.v.event.operator == "y" then
      local reg = vim.fn.getreg("+")
      vim.fn.setreg("+", reg:gsub("\r\n", "\n"))
    end
  end,
})
