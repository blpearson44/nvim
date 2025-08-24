-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
local unmap = vim.keymap.del
map("n", "<leader>wv", vim.cmd.vsplit, { desc = "Open Vertical Split." })
map("n", "<leader>wh", vim.cmd.split, { desc = "Open Horizontal Split." })
map("n", "<leader>wc", vim.cmd.clo, { desc = "Close pane." })
map("n", "<leader>wo", vim.cmd.only, { desc = "Close all other panes." })

-- use smart-splits for navigation
unmap("n", "<C-h>")
unmap("n", "<C-j>")
unmap("n", "<C-k>")
unmap("n", "<C-l>")
map("n", "<C-h>", require("smart-splits").move_cursor_left)
map("n", "<C-j>", require("smart-splits").move_cursor_down)
map("n", "<C-k>", require("smart-splits").move_cursor_up)
map("n", "<C-l>", require("smart-splits").move_cursor_right)
map("n", "<leader>db", require("snacks.dashboard").open, { desc = "Open dashboard" })
-- Quick chat keybinding
vim.keymap.set("n", "<leader>ab", function()
  local input = vim.fn.input("Quick Chat: ")
  if input ~= "" then
    require("CopilotChat").ask(input, {
      selection = require("CopilotChat.select").buffer,
    })
  end
end, { desc = "CopilotChat - Quick chat" })
