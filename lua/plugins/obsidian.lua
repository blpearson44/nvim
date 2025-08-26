return {
  "obsidian-nvim/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  cmd = {
    "Obsidian",
  },
  keys = {
    { "<leader>on", "<cmd>Obsidian quick_switch<cr>", desc = "Obsidian Quick Switch" },
    { "<leader>op", "<cmd>edit ~/Projects/dta-notes/notes/_local/Planner.md<cr>", desc = "Open planner note" },
    { "<leader>ot", "<cmd>Obsidian today<cr>", desc = "Open today's note" },
    { "<leader>of", "<cmd>Obsidian follow_link<cr>", desc = "Follow link under cursor" },
    { "<leader>os", "<cmd>Obsidian search_notes<cr>", desc = "Search notes" },
    { "<leader>ol", "<cmd>Obsidian link<cr>", desc = "Link to note" },
    { "<leader>om", "<cmd>Obsidian backlinks<cr>", desc = "Show backlinks" },
    { "<C-c><C-c>", "<cmd>Obsidian toggle_checkbox<cr>", desc = "Toggle checkbox", mode = { "n", "i", "v" } },
  },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
    "echasnovski/mini.files",
  },
  opts = {
    workspaces = {
      {
        name = "Work",
        path = "~/Projects/dta-notes",
        overrides = {
          notes_subdir = "notes",
          daily_notes = {
            folder = "notes/_local/dailies",
            default_tags = {
              "daily",
            },
          },
        },
      },
    },
    follow_url_func = function(url)
      local pattern = "^https://github%.com/[%w%-%.]+/[%w%-%.]+/issues/%d+$"

      if string.match(url, pattern) then
        vim.cmd.vsplit()
        vim.cmd.Octo(url)
        return
      end
      vim.ui.open(url)
    end,
    note_id_func = function(title)
      -- Create note IDs in a Zettelkasten format with a timestamp and a suffix.
      -- In this case a note with the title 'My new note' will be given an ID that looks
      -- like '1657296016-my-new-note', and therefore the file name '1657296016-my-new-note.md'
      print(title)
      local suffix = ""
      if title ~= nil then
        -- If title is given, transform it into valid file name.
        suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
      else
        -- If title is nil, just add 4 random uppercase letters to the suffix.
        for _ = 1, 4 do
          suffix = suffix .. string.char(math.random(65, 90))
        end
      end
      return tostring(os.date("%Y%m%d", os.time())) .. "-" .. suffix
    end,
  },
}
