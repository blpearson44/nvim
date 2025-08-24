local function ordinal(n)
  local suffixes = { "th", "st", "nd", "rd" }
  local v = n % 100
  if v >= 11 and v <= 13 then
    return n .. "th"
  else
    local suffix = suffixes[(n % 10) + 1] or "th"
    return n .. suffix
  end
end

local function longform_date()
  local t = os.date("*t")
  local month = os.date("%B")
  local day = ordinal(t.day)
  local year = t.year
  local hour = t.hour
  local min = t.min
  return string.format("%s %s, %d %02d:%02d", month, day, year, hour, min)
end

print(longform_date())
return {
  "folke/snacks.nvim",
  opts = {
    indent = { enabled = true },
    input = { enabled = true },
    notifier = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = false },
    statuscolumn = { enabled = false }, -- we set this in options.lua
    toggle = { map = LazyVim.safe_keymap_set },
    words = { enabled = true },
    terminal = { enabled = true },
    explorer = { enabled = false },
    dashboard = {
      preset = {
        pick = function(cmd, opts)
          return LazyVim.pick(cmd, opts)()
        end,
        header = longform_date(),
        -- stylua: ignore
        ---@type snacks.dashboard.Item[]
        keys = {
          { icon = " ", key = "p", desc = "Projects", action = ":lua Snacks.picker.projects()", },
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
          { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
      },
    },
  },
}
