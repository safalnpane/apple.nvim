local palette = require("apple.palette")
local themeSwitch = require("apple.theme-switch")

local M = {}

local function apply_theme(colors)
  require("apple.highlights").setup(colors)
  require("apple.integrations.treesitter").setup(colors)
  require("apple.integrations.lsp").setup(colors)
  require("apple.integrations.telescope").setup(colors)
  require("apple.integrations.cmp").setup(colors)
  require("apple.integrations.gitsigns").setup(colors)
end

function M.setup()
  vim.o.termguicolors = true
  vim.g.colors_name = "apple"

  -- Initial load
  local is_dark = vim.o.background == "dark"
  local initial_colors = is_dark and palette.dark or palette.light
  apply_theme(initial_colors)

  -- Listen for system changes
  themeSwitch.setup(function(mode)
    vim.o.background = mode
    local colors = (mode == "dark") and palette.dark or palette.light
    apply_theme(initial_colors)
  end)
end

return M
