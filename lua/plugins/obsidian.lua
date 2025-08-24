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
