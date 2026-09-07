local M = {}

function M.setup(c)
  local hl = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  -----------------------------------------------------------------------------
  -- Core Editor UI
  -----------------------------------------------------------------------------
  hl("Normal", { fg = c.fg, bg = c.bg })
  hl("NormalNC", { fg = c.fg, bg = c.bg })
  hl("CursorLine", { bg = c.cursor_line })
  hl("Visual", { bg = c.selection })
  hl("LineNr", { fg = c.line_nr })
  hl("CursorLineNr", { fg = c.fg, bold = true })
  hl("SignColumn", { bg = c.bg })

  -----------------------------------------------------------------------------
  -- Base Vim Syntax
  -----------------------------------------------------------------------------
  hl("Comment", { fg = c.comment, italic = true })
  hl("Constant", { fg = c.number })
  hl("String", { fg = c.string })
  hl("Character", { fg = c.string })
  hl("Number", { fg = c.number })
  hl("Boolean", { fg = c.keyword, bold = true })
  hl("Float", { fg = c.number })

  hl("Identifier", { fg = c.fg })
  hl("Function", { fg = c.call })
  hl("Statement", { fg = c.keyword, bold = true })
  hl("Conditional", { fg = c.keyword, bold = true })
  hl("Repeat", { fg = c.keyword, bold = true })
  hl("Operator", { fg = c.fg })
  hl("Keyword", { fg = c.keyword, bold = true })

  hl("PreProc", { fg = c.preproc })
  hl("Type", { fg = c.type, bold = true })
  hl("Special", { fg = c.keyword })

  -----------------------------------------------------------------------------
  -- TreeSitter Highlights (Xcode Look & Feel)
  -----------------------------------------------------------------------------
  hl("@keyword", { fg = c.keyword, bold = true })
  hl("@keyword.function", { fg = c.keyword, bold = true })
  hl("@keyword.return", { fg = c.keyword, bold = true })

  hl("@type", { fg = c.type, bold = true })
  hl("@type.builtin", { fg = c.type, bold = true })
  
  hl("@function", { fg = c.call })
  hl("@function.call", { fg = c.call })
  hl("@method", { fg = c.call })
  hl("@method.call", { fg = c.call })

  hl("@property", { fg = c.property })
  hl("@field", { fg = c.property })
  hl("@variable.member", { fg = c.property })
  hl("@variable", { fg = c.fg })
  hl("@parameter", { fg = c.fg })

  hl("@string", { fg = c.string })
  hl("@number", { fg = c.number })
  hl("@comment", { fg = c.comment, italic = true })
  hl("@punctuation.delimiter", { fg = c.gray })
  hl("@punctuation.bracket", { fg = c.fg })

  -----------------------------------------------------------------------------
  -- LSP Diagnostics
  -----------------------------------------------------------------------------
  hl("DiagnosticError", { fg = c.red })
  hl("DiagnosticWarn", { fg = c.yellow })
  hl("DiagnosticInfo", { fg = c.blue })
  hl("DiagnosticHint", { fg = c.type })
end

return M
