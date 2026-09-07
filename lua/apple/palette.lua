local M = {}

M.dark = {
  bg = "#1f2124",
  fg = "#dfdfdf",
  gray = "#7f8c98",

  -- Syntax Colors
  keyword = "#ff7ab2",       -- Pink (func, let, var, import, return)
  string = "#ff8170",        -- Coral Red
  number = "#dabaff",        -- Light Purple
  type = "#6bdfff",          -- Light Cyan (Structs, Classes, Protocols)
  call = "#78c2b3",          -- Teal / Mint Green (Function calls)
  property = "#acf2e4",      -- Soft Mint Green (Properties/Variables)
  comment = "#6c7986",       -- Slate Gray
  preproc = "#ffa14f",       -- Orange (Macros, Directives, #if)

  -- UI Colors
  cursor_line = "#282a2e",
  selection = "#264f78",
  line_nr = "#53606e",

  -- Diagnostics / Git
  red = "#ff453a",
  green = "#32d74b",
  yellow = "#ffd60a",
  blue = "#0a84ff",
}

M.light = {
  bg = "#ffffff",
  fg = "#000000",
  gray = "#707070",

  -- Syntax Colors
  keyword = "#ad3da4",       -- Purple / Magenta
  string = "#c41a16",        -- Deep Red
  number = "#272ad8",        -- Electric Blue
  type = "#007a7d",          -- Dark Cyan / Teal
  call = "#326d74",          -- Slate Teal
  property = "#000000",      -- Black
  comment = "#5d6c79",       -- Slate Gray
  preproc = "#784925",       -- Brown / Warm Orange

  -- UI Colors
  cursor_line = "#f3f5f7",
  selection = "#b5d5ff",
  line_nr = "#a2a2a2",

  -- Diagnostics / Git
  red = "#d70000",
  green = "#1a852a",
  yellow = "#a07400",
  blue = "#0066cc",
}

return M
