-- Gruber Void Lite color palette
-- Ported from Zed "Gruber Void Lite ⚫" theme + user overrides

local M = {}

M.colors = {
  -- Editor UI
  bg = "#FAFAFA",
  bg_alt = "#F0F0F0",
  fg = "#242323",
  text = "#4D4D4D",
  text_accent = "#000000",
  text_muted = "#808080",
  text_disabled = "#BFBFBF",

  -- Borders & surfaces
  border = "#F0F0F0",
  surface = "#F0F0F0",

  -- Cursor & selection
  cursor = "#000000",
  selection = "#D0D0D0",

  -- Line numbers
  line_nr = "#BFBFBF",
  line_nr_active = "#000000",

  -- Active line
  cursorline = "#F0F0F0",

  -- Search
  search = "#D1B52E",
  search_current = "#BFA628",

  -- Indent guides
  indent_guide = "#BFBFBF",
  indent_guide_active = "#808080",

  -- Scrollbar
  scrollbar = "#4F4F4F",

  -- Syntax (base theme with user overrides applied)
  comment = "#aa3731",       -- override: red
  string = "#448c27",        -- override: green
  keyword = "#000000",       -- bold
  func = "#325cc0",          -- override: blue, no italic
  variable = "#242323",
  type = "#383A3B",
  number = "#595959",
  operator = "#292929",      -- bold
  boolean = "#383A3B",
  constant = "#383A3B",
  punctuation = "#242323",
  tag = "#4F4F4F",
  constructor = "#242323",
  attribute = "#242323",
  primary = "#000000",

  -- Diagnostics
  error = "#CC2B46",
  warning = "#BFA628",
  info = "#2A46CC",
  hint = "#737373",

  -- Git / Diff
  added = "#7CB371",
  modified = "#BFA628",
  removed = "#CC2B46",

  -- Special
  none = "NONE",

  -- Terminal ANSI
  ansi_black = "#000000",
  ansi_red = "#D13C57",
  ansi_green = "#44C42B",
  ansi_yellow = "#D1B52E",
  ansi_blue = "#3C57D1",
  ansi_magenta = "#B53CD1",
  ansi_cyan = "#25AA94",
  ansi_white = "#2B2B2B",
  ansi_bright_black = "#211021",
  ansi_bright_red = "#D1495F",
  ansi_bright_green = "#47BF2F",
  ansi_bright_yellow = "#BCA22F",
  ansi_bright_blue = "#405BD1",
  ansi_bright_magenta = "#BF58D3",
  ansi_bright_cyan = "#2FBFA4",
  ansi_bright_white = "#281919",
}

return M
