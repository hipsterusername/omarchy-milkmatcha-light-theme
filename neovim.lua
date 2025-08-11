-- Omarchy Milkmatcha Light Theme for Neovim
-- A soft, warm light theme with matcha green accents

local M = {}

-- Color palette
M.colors = {
  -- Base colors (light theme)
  bg0 = '#f4f1e8',    -- Main background (cream)
  bg1 = '#e8e2d5',    -- Slightly darker background
  bg2 = '#e0d9c8',    -- UI elements background
  bg3 = '#d6ccb9',    -- Selection/highlight background
  bg4 = '#c9bfac',    -- Inactive elements
  bg5 = '#bdb3a0',    -- Comments/subtle text
  
  -- Foreground colors
  fg0 = '#3a4238',    -- Main text (dark green-gray)
  fg1 = '#5c6a53',    -- Slightly lighter text
  fg2 = '#7a8774',    -- Subdued text
  
  -- Accent colors
  matcha = '#7a9461',  -- Primary matcha green
  mint = '#6fa695',    -- Mint/aqua accent
  rose = '#c65f5f',    -- Rose/red for errors
  honey = '#d4a574',   -- Honey/orange for warnings
  lavender = '#a17a8f', -- Lavender/purple accent
  sky = '#7a92a5',     -- Sky blue accent
  
  -- Special
  selection = '#d6ccb9',
  cursor_line = '#e8e2d5',
  visual = '#d0c5b0',
}

-- Theme setup function
M.setup = function()
  -- Reset highlighting
  vim.cmd('highlight clear')
  if vim.fn.exists('syntax_on') then
    vim.cmd('syntax reset')
  end
  
  vim.o.termguicolors = true
  vim.g.colors_name = 'omarchy-milkmatcha-light'
  
  local c = M.colors
  
  -- Editor highlights
  vim.api.nvim_set_hl(0, 'Normal', { fg = c.fg0, bg = c.bg0 })
  vim.api.nvim_set_hl(0, 'NormalFloat', { fg = c.fg0, bg = c.bg1 })
  vim.api.nvim_set_hl(0, 'FloatBorder', { fg = c.bg4, bg = c.bg1 })
  vim.api.nvim_set_hl(0, 'Cursor', { fg = c.bg0, bg = c.fg0 })
  vim.api.nvim_set_hl(0, 'CursorLine', { bg = c.cursor_line })
  vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = c.matcha, bold = true })
  vim.api.nvim_set_hl(0, 'LineNr', { fg = c.bg5 })
  vim.api.nvim_set_hl(0, 'Visual', { bg = c.visual })
  vim.api.nvim_set_hl(0, 'VisualNOS', { bg = c.visual })
  vim.api.nvim_set_hl(0, 'Search', { fg = c.bg0, bg = c.matcha })
  vim.api.nvim_set_hl(0, 'IncSearch', { fg = c.bg0, bg = c.honey })
  vim.api.nvim_set_hl(0, 'MatchParen', { fg = c.rose, bold = true })
  
  -- Syntax highlighting
  vim.api.nvim_set_hl(0, 'Comment', { fg = c.bg5, italic = true })
  vim.api.nvim_set_hl(0, 'Constant', { fg = c.lavender })
  vim.api.nvim_set_hl(0, 'String', { fg = c.matcha })
  vim.api.nvim_set_hl(0, 'Character', { fg = c.matcha })
  vim.api.nvim_set_hl(0, 'Number', { fg = c.lavender })
  vim.api.nvim_set_hl(0, 'Boolean', { fg = c.lavender })
  vim.api.nvim_set_hl(0, 'Float', { fg = c.lavender })
  vim.api.nvim_set_hl(0, 'Identifier', { fg = c.fg0 })
  vim.api.nvim_set_hl(0, 'Function', { fg = c.sky })
  vim.api.nvim_set_hl(0, 'Statement', { fg = c.rose })
  vim.api.nvim_set_hl(0, 'Conditional', { fg = c.rose })
  vim.api.nvim_set_hl(0, 'Repeat', { fg = c.rose })
  vim.api.nvim_set_hl(0, 'Label', { fg = c.honey })
  vim.api.nvim_set_hl(0, 'Operator', { fg = c.fg1 })
  vim.api.nvim_set_hl(0, 'Keyword', { fg = c.rose })
  vim.api.nvim_set_hl(0, 'Exception', { fg = c.rose })
  vim.api.nvim_set_hl(0, 'PreProc', { fg = c.honey })
  vim.api.nvim_set_hl(0, 'Include', { fg = c.rose })
  vim.api.nvim_set_hl(0, 'Define', { fg = c.honey })
  vim.api.nvim_set_hl(0, 'Macro', { fg = c.honey })
  vim.api.nvim_set_hl(0, 'PreCondit', { fg = c.honey })
  vim.api.nvim_set_hl(0, 'Type', { fg = c.mint })
  vim.api.nvim_set_hl(0, 'StorageClass', { fg = c.mint })
  vim.api.nvim_set_hl(0, 'Structure', { fg = c.mint })
  vim.api.nvim_set_hl(0, 'Typedef', { fg = c.mint })
  vim.api.nvim_set_hl(0, 'Special', { fg = c.honey })
  vim.api.nvim_set_hl(0, 'SpecialChar', { fg = c.honey })
  vim.api.nvim_set_hl(0, 'Tag', { fg = c.sky })
  vim.api.nvim_set_hl(0, 'Delimiter', { fg = c.fg1 })
  vim.api.nvim_set_hl(0, 'SpecialComment', { fg = c.bg5, italic = true })
  vim.api.nvim_set_hl(0, 'Debug', { fg = c.rose })
  vim.api.nvim_set_hl(0, 'Underlined', { underline = true })
  vim.api.nvim_set_hl(0, 'Error', { fg = c.rose, bold = true })
  vim.api.nvim_set_hl(0, 'Todo', { fg = c.honey, bold = true })
  
  -- UI elements
  vim.api.nvim_set_hl(0, 'StatusLine', { fg = c.fg1, bg = c.bg2 })
  vim.api.nvim_set_hl(0, 'StatusLineNC', { fg = c.bg5, bg = c.bg1 })
  vim.api.nvim_set_hl(0, 'TabLine', { fg = c.fg2, bg = c.bg2 })
  vim.api.nvim_set_hl(0, 'TabLineFill', { bg = c.bg1 })
  vim.api.nvim_set_hl(0, 'TabLineSel', { fg = c.fg0, bg = c.bg0, bold = true })
  vim.api.nvim_set_hl(0, 'Pmenu', { fg = c.fg1, bg = c.bg1 })
  vim.api.nvim_set_hl(0, 'PmenuSel', { fg = c.bg0, bg = c.matcha })
  vim.api.nvim_set_hl(0, 'PmenuSbar', { bg = c.bg2 })
  vim.api.nvim_set_hl(0, 'PmenuThumb', { bg = c.bg4 })
  vim.api.nvim_set_hl(0, 'WildMenu', { fg = c.bg0, bg = c.matcha })
  vim.api.nvim_set_hl(0, 'VertSplit', { fg = c.bg3 })
  vim.api.nvim_set_hl(0, 'WinSeparator', { fg = c.bg3 })
  vim.api.nvim_set_hl(0, 'Folded', { fg = c.bg5, bg = c.bg1 })
  vim.api.nvim_set_hl(0, 'FoldColumn', { fg = c.bg5, bg = c.bg0 })
  vim.api.nvim_set_hl(0, 'SignColumn', { fg = c.fg2, bg = c.bg0 })
  vim.api.nvim_set_hl(0, 'ColorColumn', { bg = c.bg1 })
  
  -- Diff highlighting
  vim.api.nvim_set_hl(0, 'DiffAdd', { fg = c.matcha, bg = c.bg1 })
  vim.api.nvim_set_hl(0, 'DiffChange', { fg = c.honey, bg = c.bg1 })
  vim.api.nvim_set_hl(0, 'DiffDelete', { fg = c.rose, bg = c.bg1 })
  vim.api.nvim_set_hl(0, 'DiffText', { fg = c.sky, bg = c.bg2, bold = true })
  
  -- Git signs
  vim.api.nvim_set_hl(0, 'GitSignsAdd', { fg = c.matcha })
  vim.api.nvim_set_hl(0, 'GitSignsChange', { fg = c.honey })
  vim.api.nvim_set_hl(0, 'GitSignsDelete', { fg = c.rose })
  
  -- Diagnostic highlights
  vim.api.nvim_set_hl(0, 'DiagnosticError', { fg = c.rose })
  vim.api.nvim_set_hl(0, 'DiagnosticWarn', { fg = c.honey })
  vim.api.nvim_set_hl(0, 'DiagnosticInfo', { fg = c.sky })
  vim.api.nvim_set_hl(0, 'DiagnosticHint', { fg = c.mint })
  
  -- LSP highlights
  vim.api.nvim_set_hl(0, 'LspReferenceText', { bg = c.bg2 })
  vim.api.nvim_set_hl(0, 'LspReferenceRead', { bg = c.bg2 })
  vim.api.nvim_set_hl(0, 'LspReferenceWrite', { bg = c.bg2, underline = true })
  
  -- Treesitter highlights
  vim.api.nvim_set_hl(0, '@variable', { fg = c.fg0 })
  vim.api.nvim_set_hl(0, '@variable.builtin', { fg = c.lavender })
  vim.api.nvim_set_hl(0, '@variable.parameter', { fg = c.fg1 })
  vim.api.nvim_set_hl(0, '@variable.member', { fg = c.mint })
  vim.api.nvim_set_hl(0, '@constant', { fg = c.lavender })
  vim.api.nvim_set_hl(0, '@constant.builtin', { fg = c.lavender })
  vim.api.nvim_set_hl(0, '@constant.macro', { fg = c.honey })
  vim.api.nvim_set_hl(0, '@module', { fg = c.sky })
  vim.api.nvim_set_hl(0, '@module.builtin', { fg = c.sky })
  vim.api.nvim_set_hl(0, '@label', { fg = c.honey })
  vim.api.nvim_set_hl(0, '@string', { fg = c.matcha })
  vim.api.nvim_set_hl(0, '@string.escape', { fg = c.honey })
  vim.api.nvim_set_hl(0, '@string.special', { fg = c.honey })
  vim.api.nvim_set_hl(0, '@string.regexp', { fg = c.mint })
  vim.api.nvim_set_hl(0, '@character', { fg = c.matcha })
  vim.api.nvim_set_hl(0, '@character.special', { fg = c.honey })
  vim.api.nvim_set_hl(0, '@boolean', { fg = c.lavender })
  vim.api.nvim_set_hl(0, '@number', { fg = c.lavender })
  vim.api.nvim_set_hl(0, '@number.float', { fg = c.lavender })
  vim.api.nvim_set_hl(0, '@type', { fg = c.mint })
  vim.api.nvim_set_hl(0, '@type.builtin', { fg = c.mint })
  vim.api.nvim_set_hl(0, '@type.definition', { fg = c.mint })
  vim.api.nvim_set_hl(0, '@attribute', { fg = c.honey })
  vim.api.nvim_set_hl(0, '@property', { fg = c.mint })
  vim.api.nvim_set_hl(0, '@function', { fg = c.sky })
  vim.api.nvim_set_hl(0, '@function.builtin', { fg = c.sky })
  vim.api.nvim_set_hl(0, '@function.call', { fg = c.sky })
  vim.api.nvim_set_hl(0, '@function.macro', { fg = c.honey })
  vim.api.nvim_set_hl(0, '@function.method', { fg = c.sky })
  vim.api.nvim_set_hl(0, '@function.method.call', { fg = c.sky })
  vim.api.nvim_set_hl(0, '@constructor', { fg = c.mint })
  vim.api.nvim_set_hl(0, '@operator', { fg = c.fg1 })
  vim.api.nvim_set_hl(0, '@keyword', { fg = c.rose })
  vim.api.nvim_set_hl(0, '@keyword.coroutine', { fg = c.rose })
  vim.api.nvim_set_hl(0, '@keyword.function', { fg = c.rose })
  vim.api.nvim_set_hl(0, '@keyword.operator', { fg = c.rose })
  vim.api.nvim_set_hl(0, '@keyword.import', { fg = c.rose })
  vim.api.nvim_set_hl(0, '@keyword.conditional', { fg = c.rose })
  vim.api.nvim_set_hl(0, '@keyword.repeat', { fg = c.rose })
  vim.api.nvim_set_hl(0, '@keyword.return', { fg = c.rose })
  vim.api.nvim_set_hl(0, '@keyword.exception', { fg = c.rose })
  vim.api.nvim_set_hl(0, '@comment', { fg = c.bg5, italic = true })
  vim.api.nvim_set_hl(0, '@comment.documentation', { fg = c.bg5, italic = true })
  vim.api.nvim_set_hl(0, '@punctuation', { fg = c.fg1 })
  vim.api.nvim_set_hl(0, '@punctuation.bracket', { fg = c.fg1 })
  vim.api.nvim_set_hl(0, '@punctuation.delimiter', { fg = c.fg1 })
  vim.api.nvim_set_hl(0, '@punctuation.special', { fg = c.honey })
  vim.api.nvim_set_hl(0, '@tag', { fg = c.rose })
  vim.api.nvim_set_hl(0, '@tag.attribute', { fg = c.honey })
  vim.api.nvim_set_hl(0, '@tag.delimiter', { fg = c.fg1 })
end

-- LazyVim integration
return {
  {
    "omarchy-milkmatcha-light",
    lazy = false,
    priority = 1000,
    config = function()
      M.setup()
    end,
  },
  { "LazyVim/LazyVim", opts = { colorscheme = "omarchy-milkmatcha-light" } },
}