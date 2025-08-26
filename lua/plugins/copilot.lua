return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    keys = {
      -- Quick chat keybinding
      {
        "<leader>ab",
        function()
          local input = vim.fn.input("Buffer Quick Chat: ")
          if input ~= "" then
            require("CopilotChat").ask(input, {
              selection = require("CopilotChat.select").buffer,
            })
          end
        end,
        mode = { "n", "v" },
        { desc = "CopilotChat - Buffer chat" },
      },
      {
        "<C-l>",
        nil,
      },
    },
  },
}
