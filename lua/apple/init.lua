local palette = require("apple.palette")
local themeSwitch = require("apple.theme-switch")

local M = {}

function M.setup()
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end
  vim.cmd("highlight clear")

  vim.o.termguicolors = true
  vim.g.colors_name = "apple"

  local colors = {}
  themeSwitch.setup(function(mode)
    if mode == "dark" then
      vim.o.background = "dark"
      colors = palette.dark
    else
      vim.o.background = "light"
      colors = palette.light
    end
  end)

  require("apple.highlights").setup(colors)
  require("apple.integrations.treesitter").setup(colors)
  require("apple.integrations.lsp").setup(colors)
  require("apple.integrations.telescope").setup(colors)
  require("apple.integrations.cmp").setup(colors)
  require("apple.integrations.gitsigns").setup(colors)
end

return M
