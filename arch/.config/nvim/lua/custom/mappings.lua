---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-j>"] = { "<cmd> TmuxNavigateLeft<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateLeft<CR>", "window up" },
    ["<C-l>"] = { "<cmd> TmuxNavigateLeft<CR>", "window right" },
  },
}

-- more keybinds!

return M
