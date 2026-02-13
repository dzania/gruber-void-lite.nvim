local M = {}

function M.setup()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "gruber-void-lite"
  vim.o.background = "light"

  local c = require("gruber-void-lite.palette").colors

  local hl = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  ---------------------------------------------------------------------------
  -- Editor UI
  ---------------------------------------------------------------------------
  hl("Normal", { fg = c.fg, bg = c.bg })
  hl("NormalFloat", { fg = c.fg, bg = c.bg_alt })
  hl("NormalNC", { fg = c.fg, bg = c.bg })
  hl("FloatBorder", { fg = c.border, bg = c.bg_alt })
  hl("FloatTitle", { fg = c.text_accent, bg = c.bg_alt, bold = true })
  hl("Cursor", { fg = c.bg, bg = c.cursor })
  hl("lCursor", { link = "Cursor" })
  hl("CursorIM", { link = "Cursor" })
  hl("CursorLine", { bg = c.cursorline })
  hl("CursorColumn", { bg = c.cursorline })
  hl("ColorColumn", { bg = c.cursorline })
  hl("LineNr", { fg = c.line_nr })
  hl("CursorLineNr", { fg = c.line_nr_active, bold = true })
  hl("SignColumn", { fg = c.line_nr, bg = c.bg })
  hl("FoldColumn", { fg = c.line_nr, bg = c.bg })
  hl("Folded", { fg = c.text_muted, bg = c.bg_alt })
  hl("VertSplit", { fg = c.border })
  hl("WinSeparator", { fg = c.border })
  hl("StatusLine", { fg = c.fg, bg = c.bg_alt })
  hl("StatusLineNC", { fg = c.text_muted, bg = c.bg_alt })
  hl("TabLine", { fg = c.text_muted, bg = c.bg_alt })
  hl("TabLineFill", { bg = c.bg_alt })
  hl("TabLineSel", { fg = c.fg, bg = c.bg, bold = true })
  hl("WinBar", { fg = c.fg, bg = c.bg })
  hl("WinBarNC", { fg = c.text_muted, bg = c.bg })
  hl("Pmenu", { fg = c.fg, bg = c.bg_alt })
  hl("PmenuSel", { fg = c.fg, bg = c.selection })
  hl("PmenuSbar", { bg = c.bg_alt })
  hl("PmenuThumb", { bg = c.scrollbar })
  hl("Visual", { bg = c.selection })
  hl("VisualNOS", { bg = c.selection })
  hl("Search", { fg = c.bg, bg = c.search })
  hl("IncSearch", { fg = c.bg, bg = c.search_current })
  hl("CurSearch", { fg = c.bg, bg = c.search_current })
  hl("Substitute", { fg = c.bg, bg = c.search_current })
  hl("MatchParen", { fg = c.text_accent, bg = c.selection, bold = true })
  hl("NonText", { fg = c.text_disabled })
  hl("SpecialKey", { fg = c.text_disabled })
  hl("Whitespace", { fg = c.text_disabled })
  hl("EndOfBuffer", { fg = c.text_disabled })
  hl("Directory", { fg = c.func })
  hl("Title", { fg = c.text_accent, bold = true })
  hl("ErrorMsg", { fg = c.error })
  hl("WarningMsg", { fg = c.warning })
  hl("MoreMsg", { fg = c.info })
  hl("ModeMsg", { fg = c.fg, bold = true })
  hl("Question", { fg = c.info })
  hl("Conceal", { fg = c.text_muted })
  hl("SpellBad", { sp = c.error, undercurl = true })
  hl("SpellCap", { sp = c.warning, undercurl = true })
  hl("SpellLocal", { sp = c.info, undercurl = true })
  hl("SpellRare", { sp = c.hint, undercurl = true })
  hl("WildMenu", { fg = c.fg, bg = c.selection })
  hl("DiffAdd", { bg = "#d4edda" })
  hl("DiffChange", { bg = "#fff3cd" })
  hl("DiffDelete", { fg = c.removed, bg = "#f8d7da" })
  hl("DiffText", { bg = "#ffeeba" })

  ---------------------------------------------------------------------------
  -- Syntax highlights
  ---------------------------------------------------------------------------
  hl("Comment", { fg = c.comment })
  hl("Constant", { fg = c.constant })
  hl("String", { fg = c.string })
  hl("Character", { fg = c.string })
  hl("Number", { fg = c.number })
  hl("Float", { fg = c.number })
  hl("Boolean", { fg = c.boolean })
  hl("Identifier", { fg = c.variable })
  hl("Function", { fg = c.func })
  hl("Statement", { fg = c.keyword, bold = true })
  hl("Conditional", { fg = c.keyword, bold = true })
  hl("Repeat", { fg = c.keyword, bold = true })
  hl("Label", { fg = c.keyword, bold = true })
  hl("Operator", { fg = c.operator, bold = true })
  hl("Keyword", { fg = c.keyword, bold = true })
  hl("Exception", { fg = c.keyword, bold = true })
  hl("PreProc", { fg = c.keyword, bold = true })
  hl("Include", { fg = c.keyword, bold = true })
  hl("Define", { fg = c.keyword, bold = true })
  hl("Macro", { fg = c.keyword, bold = true })
  hl("PreCondit", { fg = c.keyword, bold = true })
  hl("Type", { fg = c.type })
  hl("StorageClass", { fg = c.keyword, bold = true })
  hl("Structure", { fg = c.type })
  hl("Typedef", { fg = c.type })
  hl("Special", { fg = c.fg })
  hl("SpecialChar", { fg = c.string })
  hl("Tag", { fg = c.tag })
  hl("Delimiter", { fg = c.punctuation })
  hl("SpecialComment", { fg = c.comment })
  hl("Debug", { fg = c.warning })
  hl("Underlined", { fg = c.func, underline = true })
  hl("Ignore", { fg = c.text_disabled })
  hl("Error", { fg = c.error })
  hl("Todo", { fg = c.warning, bold = true })

  ---------------------------------------------------------------------------
  -- Treesitter
  ---------------------------------------------------------------------------
  hl("@comment", { link = "Comment" })
  hl("@comment.documentation", { fg = c.comment })
  hl("@string", { link = "String" })
  hl("@string.documentation", { fg = c.string })
  hl("@string.escape", { fg = c.string })
  hl("@string.regex", { fg = c.string })
  hl("@string.special", { fg = c.string })
  hl("@string.special.symbol", { fg = c.string })
  hl("@character", { link = "Character" })
  hl("@number", { link = "Number" })
  hl("@number.float", { link = "Float" })
  hl("@boolean", { fg = c.boolean })
  hl("@constant", { fg = c.constant })
  hl("@constant.builtin", { fg = c.constant })
  hl("@constant.macro", { fg = c.constant })
  hl("@variable", { fg = c.variable })
  hl("@variable.builtin", { fg = c.variable })
  hl("@variable.member", { fg = c.variable })
  hl("@variable.parameter", { fg = c.variable })
  hl("@function", { fg = c.func })
  hl("@function.builtin", { fg = c.func })
  hl("@function.call", { fg = c.func })
  hl("@function.macro", { fg = c.func })
  hl("@function.method", { fg = c.func })
  hl("@function.method.call", { fg = c.func })
  hl("@constructor", { fg = c.constructor })
  hl("@keyword", { fg = c.keyword, bold = true })
  hl("@keyword.conditional", { fg = c.keyword, bold = true })
  hl("@keyword.coroutine", { fg = c.keyword, bold = true })
  hl("@keyword.directive", { fg = c.keyword, bold = true })
  hl("@keyword.exception", { fg = c.keyword, bold = true })
  hl("@keyword.function", { fg = c.keyword, bold = true })
  hl("@keyword.import", { fg = c.keyword, bold = true })
  hl("@keyword.modifier", { fg = c.keyword, bold = true })
  hl("@keyword.operator", { fg = c.keyword, bold = true })
  hl("@keyword.repeat", { fg = c.keyword, bold = true })
  hl("@keyword.return", { fg = c.keyword, bold = true })
  hl("@keyword.type", { fg = c.keyword, bold = true })
  hl("@operator", { fg = c.operator, bold = true })
  hl("@punctuation", { fg = c.punctuation })
  hl("@punctuation.bracket", { fg = c.punctuation })
  hl("@punctuation.delimiter", { fg = c.punctuation })
  hl("@punctuation.special", { fg = c.punctuation })
  hl("@type", { fg = c.type })
  hl("@type.builtin", { fg = c.type })
  hl("@type.definition", { fg = c.type })
  hl("@type.qualifier", { fg = c.keyword, bold = true })
  hl("@tag", { fg = c.tag })
  hl("@tag.attribute", { fg = c.attribute })
  hl("@tag.delimiter", { fg = c.punctuation })
  hl("@attribute", { fg = c.attribute })
  hl("@label", { fg = c.keyword })
  hl("@module", { fg = c.fg })
  hl("@property", { fg = c.variable })
  hl("@markup.heading", { fg = c.text_accent, bold = true })
  hl("@markup.strong", { bold = true })
  hl("@markup.italic", { italic = true })
  hl("@markup.strikethrough", { strikethrough = true })
  hl("@markup.underline", { underline = true })
  hl("@markup.link", { fg = c.func, underline = true })
  hl("@markup.link.url", { fg = c.func, underline = true })
  hl("@markup.raw", { fg = c.string })
  hl("@markup.list", { fg = c.number })

  ---------------------------------------------------------------------------
  -- LSP semantic tokens
  ---------------------------------------------------------------------------
  hl("@lsp.type.comment", { link = "Comment" })
  hl("@lsp.type.enum", { fg = c.type })
  hl("@lsp.type.enumMember", { fg = c.constant })
  hl("@lsp.type.interface", { fg = c.type })
  hl("@lsp.type.keyword", { fg = c.keyword, bold = true })
  hl("@lsp.type.namespace", { fg = c.fg })
  hl("@lsp.type.parameter", { fg = c.variable })
  hl("@lsp.type.property", { fg = c.variable })
  hl("@lsp.type.variable", { fg = c.variable })
  hl("@lsp.type.function", { fg = c.func })
  hl("@lsp.type.method", { fg = c.func })
  hl("@lsp.type.macro", { fg = c.func })
  hl("@lsp.type.decorator", { fg = c.attribute })
  hl("@lsp.type.struct", { fg = c.type })
  hl("@lsp.type.type", { fg = c.type })
  hl("@lsp.type.typeParameter", { fg = c.type })
  hl("@lsp.mod.deprecated", { strikethrough = true })

  ---------------------------------------------------------------------------
  -- Diagnostics
  ---------------------------------------------------------------------------
  hl("DiagnosticError", { fg = c.error })
  hl("DiagnosticWarn", { fg = c.warning })
  hl("DiagnosticInfo", { fg = c.info })
  hl("DiagnosticHint", { fg = c.hint })
  hl("DiagnosticOk", { fg = c.added })
  hl("DiagnosticUnderlineError", { sp = c.error, undercurl = true })
  hl("DiagnosticUnderlineWarn", { sp = c.warning, undercurl = true })
  hl("DiagnosticUnderlineInfo", { sp = c.info, undercurl = true })
  hl("DiagnosticUnderlineHint", { sp = c.hint, undercurl = true })
  hl("DiagnosticUnderlineOk", { sp = c.added, undercurl = true })
  hl("DiagnosticVirtualTextError", { fg = c.error, bg = "#F9EAED" })
  hl("DiagnosticVirtualTextWarn", { fg = c.warning, bg = "#F7F3E5" })
  hl("DiagnosticVirtualTextInfo", { fg = c.info, bg = "#EAECF7" })
  hl("DiagnosticVirtualTextHint", { fg = c.hint, bg = c.bg_alt })
  hl("DiagnosticSignError", { fg = c.error })
  hl("DiagnosticSignWarn", { fg = c.warning })
  hl("DiagnosticSignInfo", { fg = c.info })
  hl("DiagnosticSignHint", { fg = c.hint })

  ---------------------------------------------------------------------------
  -- Git signs
  ---------------------------------------------------------------------------
  hl("GitSignsAdd", { fg = c.added })
  hl("GitSignsChange", { fg = c.modified })
  hl("GitSignsDelete", { fg = c.removed })
  hl("GitSignsAddNr", { fg = c.added })
  hl("GitSignsChangeNr", { fg = c.modified })
  hl("GitSignsDeleteNr", { fg = c.removed })
  hl("GitSignsAddLn", { bg = "#d4edda" })
  hl("GitSignsChangeLn", { bg = "#fff3cd" })
  hl("GitSignsDeleteLn", { bg = "#f8d7da" })

  ---------------------------------------------------------------------------
  -- Telescope
  ---------------------------------------------------------------------------
  hl("TelescopeNormal", { fg = c.fg, bg = c.bg })
  hl("TelescopeBorder", { fg = c.border, bg = c.bg })
  hl("TelescopePromptNormal", { fg = c.fg, bg = c.bg })
  hl("TelescopePromptBorder", { fg = c.border, bg = c.bg })
  hl("TelescopePromptTitle", { fg = c.text_accent, bold = true })
  hl("TelescopePreviewTitle", { fg = c.text_accent, bold = true })
  hl("TelescopeResultsTitle", { fg = c.text_accent, bold = true })
  hl("TelescopeSelection", { bg = c.selection })
  hl("TelescopeSelectionCaret", { fg = c.text_accent })
  hl("TelescopeMatching", { fg = c.func, bold = true })

  ---------------------------------------------------------------------------
  -- nvim-tree
  ---------------------------------------------------------------------------
  hl("NvimTreeNormal", { fg = c.fg, bg = c.bg_alt })
  hl("NvimTreeNormalNC", { fg = c.fg, bg = c.bg_alt })
  hl("NvimTreeRootFolder", { fg = c.text_accent, bold = true })
  hl("NvimTreeFolderName", { fg = c.fg })
  hl("NvimTreeFolderIcon", { fg = c.text_muted })
  hl("NvimTreeEmptyFolderName", { fg = c.text_muted })
  hl("NvimTreeOpenedFolderName", { fg = c.fg, bold = true })
  hl("NvimTreeIndentMarker", { fg = c.indent_guide })
  hl("NvimTreeGitDirty", { fg = c.modified })
  hl("NvimTreeGitNew", { fg = c.added })
  hl("NvimTreeGitDeleted", { fg = c.removed })
  hl("NvimTreeSpecialFile", { fg = c.func })
  hl("NvimTreeWinSeparator", { fg = c.border, bg = c.bg_alt })

  ---------------------------------------------------------------------------
  -- Bufferline
  ---------------------------------------------------------------------------
  hl("BufferLineFill", { bg = c.bg_alt })
  hl("BufferLineBackground", { fg = c.text_muted, bg = c.bg_alt })
  hl("BufferLineBufferSelected", { fg = c.fg, bg = c.bg, bold = true })
  hl("BufferLineBufferVisible", { fg = c.text_muted, bg = c.bg_alt })

  ---------------------------------------------------------------------------
  -- indent-blankline
  ---------------------------------------------------------------------------
  hl("IblIndent", { fg = c.indent_guide })
  hl("IblScope", { fg = c.indent_guide_active })
  hl("IndentBlanklineChar", { fg = c.indent_guide })
  hl("IndentBlanklineContextChar", { fg = c.indent_guide_active })

  ---------------------------------------------------------------------------
  -- nvim-cmp
  ---------------------------------------------------------------------------
  hl("CmpItemAbbr", { fg = c.fg })
  hl("CmpItemAbbrMatch", { fg = c.func, bold = true })
  hl("CmpItemAbbrMatchFuzzy", { fg = c.func, bold = true })
  hl("CmpItemAbbrDeprecated", { fg = c.text_disabled, strikethrough = true })
  hl("CmpItemKindFunction", { fg = c.func })
  hl("CmpItemKindMethod", { fg = c.func })
  hl("CmpItemKindVariable", { fg = c.variable })
  hl("CmpItemKindKeyword", { fg = c.keyword })
  hl("CmpItemKindText", { fg = c.fg })
  hl("CmpItemKindSnippet", { fg = c.text_muted })
  hl("CmpItemKindClass", { fg = c.type })
  hl("CmpItemKindStruct", { fg = c.type })
  hl("CmpItemKindInterface", { fg = c.type })
  hl("CmpItemKindModule", { fg = c.fg })
  hl("CmpItemKindProperty", { fg = c.variable })
  hl("CmpItemKindField", { fg = c.variable })
  hl("CmpItemKindEnum", { fg = c.type })
  hl("CmpItemKindEnumMember", { fg = c.constant })
  hl("CmpItemKindConstant", { fg = c.constant })
  hl("CmpItemKindValue", { fg = c.constant })
  hl("CmpItemKindOperator", { fg = c.operator })
  hl("CmpItemKindTypeParameter", { fg = c.type })

  ---------------------------------------------------------------------------
  -- Lualine (expose colors for lualine theme)
  ---------------------------------------------------------------------------
  -- Lualine will use "auto" theme which picks from highlight groups

  ---------------------------------------------------------------------------
  -- Todo-comments
  ---------------------------------------------------------------------------
  hl("TodoBgTODO", { fg = c.bg, bg = c.info, bold = true })
  hl("TodoBgFIX", { fg = c.bg, bg = c.error, bold = true })
  hl("TodoBgWARN", { fg = c.bg, bg = c.warning, bold = true })
  hl("TodoBgNOTE", { fg = c.bg, bg = c.hint, bold = true })
  hl("TodoBgHACK", { fg = c.bg, bg = c.warning, bold = true })
  hl("TodoFgTODO", { fg = c.info })
  hl("TodoFgFIX", { fg = c.error })
  hl("TodoFgWARN", { fg = c.warning })
  hl("TodoFgNOTE", { fg = c.hint })
  hl("TodoFgHACK", { fg = c.warning })

  ---------------------------------------------------------------------------
  -- Terminal colors
  ---------------------------------------------------------------------------
  vim.g.terminal_color_0 = c.ansi_black
  vim.g.terminal_color_1 = c.ansi_red
  vim.g.terminal_color_2 = c.ansi_green
  vim.g.terminal_color_3 = c.ansi_yellow
  vim.g.terminal_color_4 = c.ansi_blue
  vim.g.terminal_color_5 = c.ansi_magenta
  vim.g.terminal_color_6 = c.ansi_cyan
  vim.g.terminal_color_7 = c.ansi_white
  vim.g.terminal_color_8 = c.ansi_bright_black
  vim.g.terminal_color_9 = c.ansi_bright_red
  vim.g.terminal_color_10 = c.ansi_bright_green
  vim.g.terminal_color_11 = c.ansi_bright_yellow
  vim.g.terminal_color_12 = c.ansi_bright_blue
  vim.g.terminal_color_13 = c.ansi_bright_magenta
  vim.g.terminal_color_14 = c.ansi_bright_cyan
  vim.g.terminal_color_15 = c.ansi_bright_white
end

return M
