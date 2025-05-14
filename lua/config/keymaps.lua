-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>wv", vim.cmd.vsplit, { desc = "Open Vertical Split." })
vim.keymap.set("n", "<leader>wh", vim.cmd.split, { desc = "Open Horizontal Split." })
vim.keymap.set("n", "<leader>wc", vim.cmd.clo, { desc = "Close pane." })
vim.keymap.set("n", "<leader>wo", vim.cmd.only, { desc = "Close all other panes." })
vim.keymap.set("n", "<C-h>", require("smart-splits").move_cursor_left)
vim.keymap.set("n", "<C-j>", require("smart-splits").move_cursor_down)
vim.keymap.set("n", "<C-k>", require("smart-splits").move_cursor_up)
vim.keymap.set("n", "<C-l>", require("smart-splits").move_cursor_right)
vim.keymap.set("n", "<leader>db", require("snacks.dashboard").open, { desc = "Open dashboard" })
